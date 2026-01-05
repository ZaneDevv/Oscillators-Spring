/**
 * @version 1.0
 * @date 2026/01/04
 * @author Álvaro Fernández Barrero
*/

public abstract class SpringObject
{
    //----------------------------------------
    // Attributes
    //----------------------------------------
    
    protected Vector targetPosition = new Vector();
    protected Vector position = new Vector();
    protected Vector velocity = new Vector();
    
    protected float k = 0;
    protected float mass = 0;
    protected float beta = 0;
    
    //----------------------------------------
    // Methods
    //----------------------------------------
    
    /**
     * Updates the spring
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    protected abstract void update(float dt);

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
