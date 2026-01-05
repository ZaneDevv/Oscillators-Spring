/**
 * @version 1.0
 * @date 2026/01/04
 * @author Álvaro Fernández Barrero
*/

public class Spring extends SpringObject
{
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
}
