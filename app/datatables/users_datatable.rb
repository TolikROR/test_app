class UsersDatatable < ApplicationDatatable
  delegate :edit_user_path, to: :@view

  private

  def data
    users.map do |user|
      [].tap do |column|
        column << user.first_name
        column << user.last_name
        column << user.birthday
        column << user.address

        links = []
        links << link_to('Show', user)
        links << link_to('Edit', edit_user_path(user))
        links << link_to('Destroy', user, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
    end
  end

  def count
    User.count
  end

  def total_entries
    users.total_count
  end

  def users
    @users ||= fetch_users
  end

  def fetch_users
    search_value = /.*#{params[:search][:value]}.*/i

    users = User.order("#{sort_column} #{sort_direction}")
    users = users.page(page).per(per_page)

    users = users.where( :$or => [{:first_name => search_value}, {:last_name => search_value},
                                  {:address => search_value}] )
    #users = users.where({:birthday => params[:search][:value] }) error ArgumentError (no time information in ""):

  end

  def columns
    %w(first_name last_name birthday address)
  end
end
