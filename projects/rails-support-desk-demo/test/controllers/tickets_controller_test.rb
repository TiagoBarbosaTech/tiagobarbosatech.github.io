require "test_helper"

class TicketsControllerTest < ActionDispatch::IntegrationTest
  test "creates ticket" do
    assert_difference("Ticket.count", 1) do
      post tickets_path, params: {
        ticket: {
          title: "New production issue",
          customer_email: "customer@example.com",
          priority: "urgent",
          status: "open",
          description: "A customer-facing workflow is failing."
        }
      }
    end

    assert_redirected_to ticket_path(Ticket.last)
  end
end
