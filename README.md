# Oscillators - Springs

Harmonic oscillators are key when it comes to simulations, physics or dynamic animations. They make a great smooth motion with just a few formulas.

Lately, I decided to study all the formulas I have been seeing all along my time as programmer and understand why that massive formulas come from. Today, I finally achieved that and wanted to test it by my own.

In this repository, you will se a code I programmed on [`Processing`](https://processing.org/), a software to make simple graphics simulations without caring about shaders or graphic programming using _java_, and a paper I have written in the directory [`math`](./math/) obtaining the formula from the very beginning, step by step.


<div align="center">
    <img src="./Bounce.gif" alt="Bounce" width="30%" />
</div>

## Requeriments

To be able to understand this project, you would need a solid knowledge about:

* Math
    * Algebra
    * Angles & trigonometry
    * Linear algebra (basis of vectors)
    * Complex numbers
    * Euler Identity

* Programming
    * Basics of programming
    * OOP


## About the math

When you first study what harmonic oscillators are, you might not see how useful it could be. Maybe a physicist would stringly disagree with me because en physics it appears everywhere, but at this point, we are not physicists but programmers, and probabbly, if you are interested in these kind of movements, game programmers. For those, I would like to think for a moment in the motion of a car: What happens when it falls and lands on the floor? How do we move the camera when we accelerate or turn?

Using springs (oscillators), we are able to make dynamic and smooth movements, enhancing also the game-feel.

If you are not into math, the formulas used in this repository might seem a bit scary, but it is not complex whatsoever.


## About the project

The project is super simple, it only has 3 classes and a main code.

* The main code is a general controller for the game. You will find here some parameters to modify the oscillators or even how many FPS you want to have in the simulation.

* `Vector`: This class has useful tools to work with 2D vectors. It is used to define the body's position and "simplify" the math behind the oscillators.

* `Spring`: This class is the easiest oscillator we are able to simulate but keeping the regurousity of the math behind it.

* `SpringOverTime`: This class is more accurate but also harder than the *Spring* class, but essentially does the same but a bit better.