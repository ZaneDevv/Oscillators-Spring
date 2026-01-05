/**
 * @version 1.0
 * @date 2026/01/04
 * @author Álvaro Fernández Barrero
*/


//----------------------------------------
// Constants
//----------------------------------------

final int FPS = 100;
final double DELTA_TIME = 1 / (double)FPS;

final int CIRCLE_RADIUS = 35;

//----------------------------------------
// Variables
//----------------------------------------

//Spring spring = new Spring(70f, 1f, 5f);
SpringOverTime spring = new SpringOverTime(30f, 1f, 10f);

long lastMilliseconds = millis();

//----------------------------------------
// Methods
//----------------------------------------

/**
 * Runs when the program starts
 * @version 1.0
 * @date 2026/01/04
 * @author Álvaro Fernández Barrero
*/
void setup()
{
    size(600, 600);
}



/**
 * Runs according to the given FPS
 * @version 1.0
 * @date 2026/01/04
 * @author Álvaro Fernández Barrero
*/
void draw()
{
    // Updating with the given FPS
    if (!shouldUpdate())
    {
        return;
    }
    lastMilliseconds = millis();
    
    
    // Actual behaviour

    
    spring.setTargetPosition(new Vector(mouseX, mouseY));
    spring.update((float)DELTA_TIME);
    
    background(5);
    ellipse((int)spring.getPosition().getX(), (int)spring.getPosition().getY(), CIRCLE_RADIUS, CIRCLE_RADIUS);
}



/**
 * Checks if the program should update this frame forcing it to update only according to the FPS 
 * @return True if the program should update this frame, false otherwise
 * @version 1.0
 * @date 2026/01/04
 * @author Álvaro Fernández Barrero
*/
boolean shouldUpdate()
{
    return millis() - lastMilliseconds >= DELTA_TIME * 1e3;
}
