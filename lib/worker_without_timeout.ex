defmodule WorkerWithoutTimeout do
  use Oban.Worker,
    queue: :whatever

  def perform(_) do
    raise RuntimeError, "boop"

    :ok
  end
end
