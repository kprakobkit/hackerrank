def find_best_team(team_member_array)
  team_combinations = team_member_array.map { |member| member.split('').map(&:to_i) }.combination(2).to_a
  zipped_array = team_combinations.map { |pair| pair[0].zip(pair[1]) }
  max_topic_per_team = []
  zipped_array.each do |team|
    max_topic = 0
    team.each do |pair|
      max_topic += 1 if pair[0] == 1 || pair[1] == 1
    end
    max_topic_per_team << max_topic
  end

  max_topic = max_topic_per_team.max
  no_team_with_max_topic = max_topic_per_team.count(max_topic)

  return [max_topic, no_team_with_max_topic]
end

team = %w(10101 11100 11010 00101)
p find_best_team(team)
