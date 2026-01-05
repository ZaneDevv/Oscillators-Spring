/**
 * @version 1.0
 * @date 2026/01/04
 * @author Álvaro Fernández Barrero
*/

public class SpringOverTime extends ISpring
{
    //----------------------------------------
    // Attributes
    //----------------------------------------
    
    private Vector targetPosition = new Vector();
    private Vector position = new Vector();
    private Vector velocity = new Vector();
    
    private float k = 0;
    private float mass = 0;
    private float beta = 0;
    private float omega = 0;
    private float zeta = 0;
    private float omegaZeta = 0;
    
    //----------------------------------------
    // Constructor
    //----------------------------------------
    
    public SpringOverTime(float k, float mass, float beta)
    {
        this.k = k;
        this.mass = mass;
        this.beta = beta;
        this.omega = sqrt(this.k / this.mass);
        this.zeta = this.beta / (2 * sqrt(this.k * this.mass));
        this.omegaZeta = this.omega * this.zeta; 
    }
    
    //----------------------------------------
    // Methods
    //----------------------------------------
    
    /**
     * Updates the spring
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public void update(float dt)
    {
        Vector a = this.position.sub(this.targetPosition);
        
        if (this.zeta < 1)
        {
            float omegaRoot = this.omega * sqrt(1 - this.zeta * this.zeta);
            
            float exponential = exp(-zeta * omega * dt);
            float cosine = cos(omegaRoot * dt);
            float sine = sin(omegaRoot * dt);
            
            Vector b = this.velocity.sub(a.multiply(zeta * omega)).multiply(1.0f / omegaRoot);
            
            this.position = a.multiply(cosine).add(b.multiply(sine)).multiply(exponential).add(this.targetPosition);
            this.velocity = a.multiply(this.omega * this.zeta).sub(b.multiply(omegaRoot)).multiply(cosine).add(a.multiply(omegaRoot).add(b.multiply(this.omega * this.zeta)).multiply(sine)).multiply(-exponential);
        }
        else if (this.zeta == 1)
        {
            Vector b = this.velocity.add(a.multiply(this.omega));
            
            float exponential = exp(-dt * this.omega);
    
            this.position = a.add(b.multiply(dt)).multiply(exponential).add(targetPosition);
            this.velocity = b.sub(a.multiply(omega)).sub(b.multiply(omega * dt)).multiply(exponential);
        }
        else
        {
            float root = sqrt(zeta * zeta - 1.0f);

            float r1 = -omega * (zeta - root);
            float r2 = -omega * (zeta + root);
    
            Vector c2 = this.velocity.sub(this.velocity.multiply(r1)).multiply(1.0f / (r2 - r1));
            Vector c1 = a.sub(c2);
    
            float exponential1 = exp(r1 * dt);
            float exponential2 = exp(r2 * dt);
    
            this.position = c1.multiply(exponential1).add(c2.multiply(exponential2)).add(targetPosition);
            this.velocity = c1.multiply(r1 * exponential1).add(c2.multiply(exponential2 * exponential2));
        }
    }
    
    /**
     * Sets a new target position
     * @param targetPosition Current spring's target position
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public void setTargetPosition(Vector targetPosition)
    {
        this.targetPosition = targetPosition;
    }
    
    /**
     * Obtains the current spring's position
     * @return The current spring's position
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public Vector getPosition()
    {
        return this.position;
    }
}