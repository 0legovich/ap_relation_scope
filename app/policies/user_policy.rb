# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  relation_scope do |relation|
    relation
  end
end
