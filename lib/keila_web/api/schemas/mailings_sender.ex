defmodule KeilaWeb.Api.Schemas.MailingsSender do
  @properties %{
    id: %{
      type: :string,
      description: "Sender ID",
      example: "ms_12345"
    },
    name: %{
      type: :string,
      example: "AlainMails Inc. SMTP",
      required: true
    },
    from_email: %{
      type: :string,
      description: "Email address used in the FROM field",
      example: "newsletter@mailings.alainmails.com"
    },
    from_name: %{
      type: :string,
      description: "Name used in the FROM field",
      example: "AlainMails, Inc."
    },
    reply_to_email: %{
      type: :string,
      description: "Email address used in the REPLY_TO field",
      example: "support@alainmails.com"
    },
    reply_to_name: %{
      type: :string,
      description: "Name used in the REPLY_TO field",
      example: "AlainMails, Inc. Customer Service"
    }
  }

  def properties() do
    @properties
  end
end

defmodule KeilaWeb.Api.Schemas.MailingsSender.IndexResponse do
  use KeilaWeb.Api.Schema

  @properties KeilaWeb.Api.Schemas.MailingsSender.properties()
  build_open_api_schema(@properties, list: true, with_pagination: true)
end
