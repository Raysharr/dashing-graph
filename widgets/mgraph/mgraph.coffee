class Dashing.Mgraph extends Dashing.Widget

  # @accessor 'current', ->
  #   return @get('displayedValue') if @get('displayedValue')
  #   points = @get('points')
  #   if points
  #     points[0][points[0].length - 1].y + ' / ' + points[1][points[1].length - 1].y 

  ready: ->
    container = $(@node).parent()
    # Gross hacks. Let's fix this.
    width = (Dashing.widget_base_dimensions[0] * container.data("sizex")) + Dashing.widget_margins[0] * 2 * (container.data("sizex") - 1)
    height = (Dashing.widget_base_dimensions[1] * container.data("sizey"))
    
    @graph = graph = new Rickshaw.Graph(
      element: @node
      width: width
      height: height
      renderer: 'area'
      stroke: false
      series: [
        {
          color: "#e23658",
          data: [
            {
              x: 1434297726,
              y: 200
            },
            {
              x: 1434384126,
              y: 300
            },
            {
              x: 1434470526,
              y: 400
            },
            {
              x: 1434556926,
              y: 200
            },
            {
              x: 1434643326,
              y: 300
            },
            {
              x: 1434729726,
              y: 400
            },
            {
              x: 1434816126,
              y: 200
            }
          ],
          name: 'Option 1'
        },
        {
          color: "#a81533",
          data: [
            {
              x: 1434297726,
              y: 200
            },
            {
              x: 1434384126,
              y: 300
            },
            {
              x: 1434470526,
              y: 400
            },
            {
              x: 1434556926,
              y: 200
            },
            {
              x: 1434643326,
              y: 300
            },
            {
              x: 1434729726,
              y: 400
            },
            {
              x: 1434816126,
              y: 200
            }
          ],
          name: 'Option 2'
        }
      ]
    )
  
    graph.render()

    hoverDetail = new Rickshaw.Graph.HoverDetail({
      graph: graph
    });

    axes = new Rickshaw.Graph.Axis.Time({
      graph: graph
    });

  onData: (data) ->
    if @graph
      @graph.series[0].data = [{x: 0, y: 0}, {x: 10, y: 10}, {x: 20, y: 20}, {x: 30, y: 30}, {x: 40, y: 40}, {x: 50, y: 50}, {x: 60, y: 60}]
      @graph.series[1].data = [{x: 30, y: 30}, {x: 40, y: 40}, {x: 50, y: 50}, {x: 60, y: 60}, {x: 70, y: 70}, {x: 80, y: 80}, {x: 90, y: 90}]
      @graph.render()

    # seriesData = [ [], [], [] ];
    # random = new Rickshaw.Fixtures.RandomData(150);

    # for num in [0..150]
    #   random.addData(seriesData)

    # console.log(seriesData);

    # graph = new Rickshaw.Graph( {
    #   element: @node,
    #   width: width,
    #   height: height,
    #   renderer: 'line',
    #   series: [
    #     {
    #       color: "#c05020",
    #       data: seriesData[0],
    #       name: 'New York'
    #     }, {
    #       color: "#30c020",
    #       data: seriesData[1],
    #       name: 'London'
    #     }, {
    #       color: "#6060c0",
    #       data: seriesData[2],
    #       name: 'Tokyo'
    #     }
    #   ]
    # });

    # graph.render();

    # hoverDetail = new Rickshaw.Graph.HoverDetail( {
    #   graph: graph
    # });

    # legend = new Rickshaw.Graph.Legend( {
    #   graph: graph,
    #   element: document.getElementById('legend')

    # });

    # shelving = new Rickshaw.Graph.Behavior.Series.Toggle( {
    #   graph: graph,
    #   legend: legend
    # });

    # axes = new Rickshaw.Graph.Axis.Time( {
    #   graph: graph
    # });

    # axes.render();