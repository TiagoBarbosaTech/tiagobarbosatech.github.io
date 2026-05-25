require "test_helper"

class TicketTest < ActiveSupport::TestCase
  test "valid ticket" do
    ticket = Ticket.new(
      title: "Login issue",
      customer_email: "customer@example.com",
      priority: "normal",
      status: "open",
      description: "Customer cannot sign in with a valid password."
    )

    assert ticket.valid?
  end

  test "requires valid email" do
    ticket = Ticket.new(
      title: "Login issue",
      customer_email: "invalid",
      priority: "normal",
      status: "open",
      description: "Customer cannot sign in with a valid password."
    )

    assert_not ticket.valid?
  end
end
