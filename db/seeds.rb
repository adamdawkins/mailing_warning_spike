if Client.none?
  10.times do
    Client.create(name: Faker::Company.name)
  end
end

if Invoice.none?
  Client.find_each do |client|
    10.times do |i|
      client.invoices.create(amount_in_cents: (Random.random_number * 10_000).to_i, due_at: i.days.from_now, status: %w[paid approved sent].sample)
    end
  end
end
