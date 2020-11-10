class SendInvoiceEmailWorker < ApplicationJob
  sidekiq_options queue: "QUEUE_NAME_HERE", retry: 5
  def perform id
    @invoice = Invoice.find id
    YourMailerHere.send_invoice_email(@invoice).deliver_now
  end
end
