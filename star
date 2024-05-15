import turtle 
import math 
# Set up the turtle screen 
screen = turtle.Screen() 
screen.bgcolor("black") 
# Create a turtle object 
t = turtle.Turtle() 
t.speed(0)  # Set the drawing speed to the fastest 
t.color("yellow") 
# Function to draw a star 
def draw_star(x, y, size, points): 
t.penup() 
t.goto(x, y) 
t.pendown() 
# Calculate the angle between each point 
angle = 180 - (180 * (points - 2) / points)
# Draw the star 
for i in range(points): 
t.forward(size) 
t.left(180 - angle) 
# Draw a single star 
draw_star(0, 0, 100, 5) 
# Draw multiple stars with varying sizes and positions 
for i in range(10): 
x = (i - 5) * 150  # Adjust the x-coordinate 
y = (i % 2) * 100  # Alternate between two y-coordinates 
size = 50 + (i * 10)  # Increase the size gradually 
draw_star(x, y, size, points) 
points = 5 + (i % 3)  # Alternate between 5, 6, and 7 points 
# Keep the window open 
turtle.done()
