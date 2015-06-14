# this is just the dummy sample using random data to illustrate
# replace the random data with your real data... wherever you get it from

SCHEDULER.every '2s' do
  points1.shift
  points2.shift
  points1 << { x: rand(50), y: rand(50) }         # this is where you'd add a data element for graph 1
  points2 << { x: rand(50), y: rand(50) }        # this is where you'd add a data element for graph 2
  send_event('multitest', points: [points1, points2])
end