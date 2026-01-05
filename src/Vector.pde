/**
 * @version 1.0
 * @date 2026/01/04
 * @author Álvaro Fernández Barrero
*/

public class Vector
{
    //----------------------------------------
    // Attributes
    //----------------------------------------
    
    private double x = 0;
    private double y = 0;
    
    //----------------------------------------
    // Constructors
    //----------------------------------------
    
    /**
     * Creates a new 0 vector <0, 0>
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public Vector()
    {
        this.x = 0;
        this.y = 0;
    }
    
    //----------------------------------------
    // Constructors
    //----------------------------------------
    
    /**
     * Creates a new vector with the given coordinates
     * @param x X-coordinate for the vector
     * @param y Y-coordinate for the vector
     * @return The new vector with the given axes <x, y>
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public Vector(double x, double y)
    {
        this.x = x;
        this.y = y;
    }
    
    /**
     * Creates a new vector by copying the given one
     * @param v Vector to copy
     * @return A new vector with the same coordinates
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public Vector(Vector v)
    {
        this.x = v.getX();
        this.y = v.getY();
    }
    
    //----------------------------------------
    // Methods
    //----------------------------------------
    
    /**
     * Adds the current vector with the given one (v + w)
     * @param w Vector to add to the current one
     * @return Result of the current vector + w
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public Vector add(Vector w)
    {
        return new Vector(this.getX() + w.getX(), this.getY() + w.getY());
    }
    
    /**
     * Subtracts the current vector with the given one (v - w)
     * @param w Vector to subtract to the current one
     * @return Result of the current vector - w
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public Vector sub(Vector w)
    {
        return new Vector(this.getX() - w.getX(), this.getY() - w.getY());
    }
    
    /**
     * Multiplies the current vector times the given scalar
     * @param s Scalar to multiply the current vector with
     * @return Result of the current vector times the scalar
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public Vector multiply(double s)
    {
        return new Vector(this.getX() * s, this.getY() * s);
    }
    
    /**
     * Obtains the current vector's x coordinate
     * @return Current vector's x coordinate
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public double getX()
    {
        return this.x;
    }
    
    /**
     * Obtains the current vector's y coordinate
     * @return Current vector's y coordinate
     * @version 1.0
     * @date 2026/01/04
     * @author Álvaro Fernández Barrero
    */
    public double getY()
    {
        return this.y;
    }
}