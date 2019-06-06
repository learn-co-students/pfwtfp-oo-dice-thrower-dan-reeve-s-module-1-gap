# Object-Oriented Dice Thrower

## Learning Goals

- Create object oriented dice thrower application

## Introduction

You might be familiar with how to model a dice-throwing game using
procedural-style code. You might have implemented methods like `throw_die` or
`generate_set` to get a collection of 4 individual die rolls.

In this lesson, we're going to implement the same ideas: `Die` and
`DieRoller`, but from an Object-Oriented perspective. We want to show
how Object-Oriented programming is only a different _style_ of programming.

Instead of thinking in **verbs** (`throw_die`, `generate_set`) that
return **nouns**, we want to think in terms of **nouns** that do things
(**verbs**). It's a shift in style of thinking. Both "I
ate the cake" or "The cake was eaten by me" communicate that the cake
is gone and in your belly, but there's a subtle stylistic difference
("active voice" versus "passive voice").

## Create Object Oriented Dice Thrower Application

Write your implementation in `lib/dice_thrower.rb`.

* Create a `Die` class
  * It should be initializable with a "pip" count
    * A "pip" is the "dot" on the side of a die
    * The pip count you initialize a `Die` with is the largest number the `Die` can create
  * If the `Die` is initialized _without_ a pip count, it should default to `6` (a classic, cubical die) dots on the side of the die)
  * `max_pips` should be accessible via `attr_reader`
  * A method `pips` should return `max_pips`.
  * A method called `roll` should return a random pip value. The `Die` knows its own `max_pips` so we can expect this `Number` to be between 1 and `max_pips`
* Create a `DiceRoller` class
  * It should be initializable with two arguments:
    * **REQUIRED**: the number of dice that should be created
    * **OPTIONAL**: the number of pips each die should have as its maximum. If
      it is not provided, the count should default to `6`
  * By default it should initialize with a set of 1 instance of `Die`
  * The `generate_set` method should return an `Array` of the initialized number
    of dice
  * It should store the results of `generate_set` in an instance variable
  * It should implement a method called `dice` that returns the generated set
    stored in the previous step

## Conclusion

We've gone through a series of exercises that show us the process for creating
reusable and maintainable code. This is a constant pattern in Object-Oriented
development: build a class that represents a single thing (`Die`, `Burrito`,
`Car`) and then build _another_ class that wraps a collection of those single
things (`Dice`, `LunchOrder`, `StatusOfFreeway`) and offers insights about
those collections (`total_of_roll`, `likely_to_cause_heartburn?`, `rush_hour?`)

[settlers of catan]: https://www.catan.com/
