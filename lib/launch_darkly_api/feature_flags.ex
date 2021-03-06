defmodule LaunchDarklyAPI.FeatureFlags do
  alias LaunchDarklyAPI.REST

  @spec list(String.t()) :: {:ok | :error, any()}
  def list(project_key), do: REST.get("flags/#{project_key}")

  def get(project_key, feature_key, params \\ %{}),
    do: REST.get("flags/#{project_key}/#{feature_key}?" <> URI.encode_query(params))
end
