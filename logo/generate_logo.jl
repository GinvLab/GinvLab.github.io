

using Luxor
using MathTeXEngine


function logo1()


    cornradius = 30

    xtot = 1000
    ytot = 1000

    x_blue = -202
    y_green = 288
    y_red =  -328
    y_g1  =  -220
    y_lab =   282
    x_min1 =  273

    Drawing(xtot,ytot,"GinvLab_logo.svg") # "GinvLab_logo.svg")
    origin() #Point(0,0))

    #background("white")
    #rect(Point(0,0),200,200,action=:fill)

    setcolor(Luxor.julia_red)
    setcolor(Luxor.julia_purple)
    setcolor(Luxor.julia_blue)

    height_green = 2*((ytot÷2)-y_green)
    height_blue = ytot-height_green
    y_blue = -((height_blue÷2) - (y_green-(height_green÷2)))
    width_blue = 2*((xtot÷2)-abs(x_blue))

    width_red = xtot-width_blue
    x_red = - (width_red÷2 + (x_blue-width_blue÷2))
    height_red = 2*abs(-(ytot÷2)-(y_red))

    x_purple = x_red
    width_purple = width_red
    y_purple = ((y_red+(height_red÷2)) + (y_green-(height_green÷2))) ÷2
    height_purple = ytot-height_green-height_red


    setcolor(Luxor.julia_green)
    box(Point(0,y_green),xtot,height_green,[cornradius,0,0,cornradius],action=:fill)

    setcolor(Luxor.julia_blue)
    box(Point(x_blue,y_blue),width_blue,height_blue,[0,cornradius,0,0],action=:fill)

    setcolor(Luxor.julia_red)
    box(Point(x_red,y_red),width_red,height_red,[0,0,cornradius,0],action=:fill)

    setcolor(Luxor.julia_purple)
    box(Point(x_purple,y_purple),width_purple,height_purple,[0,0,0,0],action=:fill)


    strokecolor = "grey81"
    setline(2)

    setcolor("black")
    fontface("Helvetica Bold")
    fontsize(700)
    sethue("black")
    textpath("G", Point(-160,y_g1), :path, valign=:middle, halign=:center)
    fillpreserve()
    sethue(strokecolor)
    strokepath()

    fontface("Helvetica")
    sethue("black")
    textpath("⁻¹", Point(x_min1,y_g1), :path, valign=:middle, halign=:center)
    fillpreserve()
    sethue(strokecolor)  
    strokepath()


    fontface("Helvetica")
    fontsize(500)
    
    sethue("black")
    textpath("Lab", Point(0,y_lab), :path, valign=:middle, halign=:center)
    fillpreserve()
    sethue(strokecolor)
    strokepath()

    finish()
    
    # preview()
end

