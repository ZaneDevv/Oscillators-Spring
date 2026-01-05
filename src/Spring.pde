/**
 * @version 1.0
 * @date 2026/01/04
 * @author Álvaro Fernández Barrero
*/

public class Spring extends ISpring
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
    
    //----------------------------------------
    // Constructors
    //----------------------------------------
    
    public Spring(float k, float mass, float beta)
    {
        this.k = k;
        this.mass = mass;
        this.beta = beta;
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
        Vector x = this.position.sub(this.targetPosition);
        
        this.velocity = this.velocity.add(x.multiply(-k).sub(this.velocity.multiply(this.beta)).multiply(dt / this.mass));
        this.position = this.position.add(this.velocity.multiply(dt));
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
