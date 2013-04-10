Program.destroy_all
program = Program.create!(name: "UFC Workout Program")

program.steps.create!([
  {name: "Take Measurements", step_class: "Measurement", day: 0, position: 1},
  {name: "Power Punch", step_class: "Workout", day: 1, position: 2},
  {name: "Cardio Cross Train", step_class: "Workout", day: 2, position: 3},
  {name: "Ab Assassin", step_class: "Workout", day: 2, position: 4},
  {name: "Power Pull", step_class: "Workout", day: 3, position: 5},
  {name: "Fat Fighter", step_class: "Workout", day: 4, position: 6},
  {name: "Power Punch", step_class: "Workout", day: 5, position: 7},
  {name: "Cardio Cross Train", step_class: "Workout", day: 6, position: 8},
  {name: "Ultimate Stretch Flex", step_class: "Workout", day: 6, position: 9},
  {name: "Rest", step_class: "Rest", day: 7, position: 10},
])
