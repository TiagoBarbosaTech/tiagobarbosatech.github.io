class Ticket < ApplicationRecord
  STATUSES = ["open", "in_progress", "resolved", "closed"].freeze
  PRIORITIES = ["low", "normal", "high", "urgent"].freeze

  validates :title, :customer_email, :priority, :status, :description, presence: true
  validates :customer_email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :status, inclusion: { in: STATUSES }
  validates :priority, inclusion: { in: PRIORITIES }

  scope :recent, -> { order(created_at: :desc) }
  scope :by_status, ->(status) { where(status: status) }
end
