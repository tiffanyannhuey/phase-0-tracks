#The nested data structure in here represents a gym

gym = {
    locker_room: {
      shower_info: {
        showers_occupied: 1,
        showers_unoccupied: 4
      },
      bathroom_amenities: ['toilet', 'sink', 'dryer']
    },
    weight_room: {
      weight_types: ['free weights', 'kettlebell', 'barbell', 'ropes'],
      weight_set: [5, 10, 20, 40],
      bench_info: {
        benches_occupied: 5,
        benches_unoccupied: 5
      }
    },
    cardio_room: {
      machine_types: ['stairmaster', 'treadmill', 'row machine'],
      machine_info: {
        machines_occupied: 3,
        machines_unoccupied: 7
      },
      aerobic_classes: ['yoga', 'pilates', 'step', 'HIIT']


    }
}



#show how many showers are available in the locker room
p gym[:locker_room][:shower_info][:showers_unoccupied]

#change the number of showers occupied to 3
gym[:locker_room][:shower_info].replace({showers_occupied: 3, showers_unoccupied: 2})

p gym 

#add a weight set of 60 to the weight room

gym[:weight_room][:weight_set] << 60

p gym

#remove the HIIT class from the aerobic classes 

gym[:cardio_room][:aerobic_classes].pop

p gym

