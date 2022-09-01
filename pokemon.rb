def get_effectiveness(attacking_type, defending_type)
  # chart at https://pokemondb.net/type
  effectiveness = {
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

  return effectiveness[[attacking_type, defending_type]]
end

def get_damage(attacking_type, attacking_attack, defending_type, defending_attack)
  # 50 * (attack/defense) * effectiveness
  return 50 * (attacking_attack/defending_attack) * get_effectiveness(attacking_type, defending_type)
end
