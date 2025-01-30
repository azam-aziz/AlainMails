defmodule Keila.Billing.Plans do
  @moduledoc false

  alias Keila.Billing.Plan

  if Mix.env() == :prod do
    @plans [
      Plan.new("902869", "AM1", 3000, true),
      Plan.new("902870", "AM2", 7000, true),
      Plan.new("902871", "AM3", 12000, true),
      Plan.new("902872", "AM4", 18000, true),
      Plan.new("902873", "AM5", 25000, true),
      Plan.new("902874", "AM6", 36000, true),
      Plan.new("902875", "AM7", 50000, true),
      Plan.new("902876", "AM8", 75000, true),
      Plan.new("902877", "AM9", 100_000, true)
    ]
  else
    @plans [
      Plan.new("72376", "AM1", 3000, true),
      Plan.new("72377", "AM2", 7000, true),
      Plan.new("72378", "AM3", 12000, true),
      Plan.new("72379", "AM4", 18000, true),
      Plan.new("72380", "AM5", 25000, true),
      Plan.new("72381", "AM6", 36000, true),
      Plan.new("73021", "AM7", 50000, true),
      Plan.new("72978", "AM8", 75000, true),
      Plan.new("72979", "AM9", 100_000, true)
    ]
  end

  def all() do
    @plans
  end
end
