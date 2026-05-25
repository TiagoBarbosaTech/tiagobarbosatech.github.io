Ticket.find_or_create_by!(title: "Customer cannot export leads") do |ticket|
  ticket.customer_email = "ana@example.com"
  ticket.priority = "high"
  ticket.status = "in_progress"
  ticket.description = "The export button returns an error for a filtered lead list. The customer needs the CSV before the end of the day."
end

Ticket.find_or_create_by!(title: "Invoice email was not delivered") do |ticket|
  ticket.customer_email = "billing@example.com"
  ticket.priority = "normal"
  ticket.status = "open"
  ticket.description = "Customer reports that the invoice email did not arrive. Check delivery logs and resend if needed."
end

Ticket.find_or_create_by!(title: "API token rotation completed") do |ticket|
  ticket.customer_email = "ops@example.com"
  ticket.priority = "low"
  ticket.status = "resolved"
  ticket.description = "Token rotation was completed and validated in the staging integration."
end
