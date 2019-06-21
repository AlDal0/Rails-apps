Rails.application.routes.draw do
post '/webhook' => 'webhooks#webhook'
get '/show' => 'webhooks#show'
  def show
    @webhooks = Webhook.all
    render 'show.html.erb'
  end
  def webhook
  webhook_notification = gateway.webhook_notification.parse(
      params["bt_signature"],
      params["bt_payload"]
    )
    webhook = Webhook.new(
      :kind => webhook_notification.kind,
      :timestamp => webhook_notifaction.timestamp
     )
    webhook.save
  return 200
  render 'webhook.html.erb'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
