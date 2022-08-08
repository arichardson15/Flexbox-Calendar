require "application_system_test_case"

class WorkOrdersTest < ApplicationSystemTestCase
  setup do
    @work_order = work_orders(:one)
  end

  test "visiting the index" do
    visit work_orders_url
    assert_selector "h1", text: "Work Orders"
  end

  test "creating a Work order" do
    visit work_orders_url
    click_on "New Work Order"

    fill_in "Duration", with: @work_order.duration
    fill_in "Id", with: @work_order.id
    fill_in "Location", with: @work_order.location_id
    fill_in "Price", with: @work_order.price
    fill_in "Technician", with: @work_order.technician_id
    fill_in "Time", with: @work_order.time
    click_on "Create Work order"

    assert_text "Work order was successfully created"
    click_on "Back"
  end

  test "updating a Work order" do
    visit work_orders_url
    click_on "Edit", match: :first

    fill_in "Duration", with: @work_order.duration
    fill_in "Id", with: @work_order.id
    fill_in "Location", with: @work_order.location_id
    fill_in "Price", with: @work_order.price
    fill_in "Technician", with: @work_order.technician_id
    fill_in "Time", with: @work_order.time
    click_on "Update Work order"

    assert_text "Work order was successfully updated"
    click_on "Back"
  end

  test "destroying a Work order" do
    visit work_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work order was successfully destroyed"
  end
end
