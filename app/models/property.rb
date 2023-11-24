class Property < ApplicationRecord
  validates :name, :description, presence: true

  validates :slug, uniqueness: true, allow_blank: true
  validate :slug_is_valid_url

  # Slug is allowed to be nil, blank or a valid url
  def slug_is_valid_url
    self.slug = nil if slug.blank?
    return true if slug.nil?
    errors.add(:slug, "Slug is invalid format") unless slug.match?(/\A[a-z0-9-]+\z/)
  end

  validates :slug, presence: true, on: :create
end
