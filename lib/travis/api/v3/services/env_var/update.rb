module Travis::API::V3
  class Services::EnvVar::Update < Service
    params :name, :value, :public, prefix: :env_var

    def run!
      repository = check_login_and_find(:repository)
      query.update(repository)
    end
  end
end
