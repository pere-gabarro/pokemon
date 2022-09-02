# provides methods to do battles between 2 pokemon
class PokemonBattle
  BASE_DAMAGE = 50

  # chart at https://pokemondb.net/type
  EFFECTIVENESS_CHART = {
    [:fire, :fire] => 0.5,
    [:fire, :water] => 0.5,
    [:fire, :electric] => 1,
    [:fire, :grass] => 2,

    [:water, :fire] => 2,
    [:water, :water] => 0.5,
    [:water, :electric] => 1,
    [:water, :grass] => 0.5,

    [:electric, :fire] => 1,
    [:electric, :water] => 2,
    [:electric, :electric] => 0.5,
    [:electric, :grass] => 0.5,

    [:grass, :fire] => 0.5,
    [:grass, :water] => 2,
    [:grass, :electric] => 1,
    [:grass, :grass] => 0.5
  }

  def effectiveness(attacking_type, defending_type)
    EFFECTIVENESS_CHART[[attacking_type, defending_type]]
  end

  def calculate_damage(attacking_type, attacking_attack, defending_type, defending_attack)
    # BASE_DAMAGE * (attack/defense) * effectiveness
    BASE_DAMAGE * (attacking_attack / defending_attack) * effectiveness(attacking_type, defending_type)
  end
end
