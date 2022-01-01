defmodule ObanTimeoutIssueTest do
  use ExUnit.Case
  use Oban.Testing, repo: MyApp.Repo

  test "worker without timeout raises an exception" do
    assert_raise RuntimeError, fn ->
      perform_job(WorkerWithoutTimeout, %{})
    end
  end

  test "worker with timeout raises an exception" do
    assert_raise RuntimeError, fn ->
      perform_job(WorkerWithTimeout, %{})
    end
  end
end
