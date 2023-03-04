defmodule SmartLock.AuthGuardian do
  use Guardian, otp_app: :smart_lock

  alias SmartLock.Managers.Get, as: GetManagers

  def subject_for_token({:ok, %{id: id}}, _claims) do
    {:ok, id}
  end

  def subject_for_token(_, _) do
    {:error, :reason_for_error}
  end

  def resource_from_claims(%{"sub" => id}) do
    resource = GetManagers.by_id(id)
    {:ok, resource}
  end

  def resource_from_claims(_claims) do
    {:error, :reason_for_error}
  end
end
