#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'byconsolewooodt_free_plugin_activation_date'
wp option delete 'byconsolewooodt_odt_setting'
wp option delete 'byconsolewooodt_holidays_setting'
wp option delete 'byconsolewooodt_location_setting'
wp option delete 'bycwooodt_language_translate'
wp option delete 'byconsolewooodt_multiple_pickup_location'
wp option delete 'byconsolewooodt_extra_options'
wp option delete 'byconsolewooodt_free_plugin_admin_access_date'
wp option delete 'byconsolewooodt_discount_percentage_amount'
wp option delete 'byconsolewooodt_chekout_page_section_heading'
wp option delete 'byconsolewooodt_chekout_page_date_label'
wp option delete 'byconsolewooodt_chekout_page_time_label'
wp option delete 'byconsolewooodt_chekout_page_order_type_label'
wp option delete 'byconsolewooodt_chekout_page_select_pickup_location_label'
wp option delete 'byconsolewooodt_chekout_page_hrs_value'
wp option delete 'byconsolewooodt_chekout_page_tips_label'
wp option delete 'byconsolewooodt_chekout_page_delivery_tip_label'
wp option delete 'byconsolewooodt_display_time_as'
wp option delete 'byconsolewooodt_hours_format'
wp option delete 'byconsolewooodt_preorder_days'
wp option delete 'byconsolewooodt_time_field_validation'
wp option delete 'byconsolewooodt_order_type'
wp option delete 'add_delivery_pickup_date_time_in_order_note'
wp option delete 'byconsolewooodt_time_field_show'
wp option delete 'byconsolewooodt_tips_show_on_checkout_page'
wp option delete 'byconsolewooodt_opening_hours_from'
wp option delete 'byconsolewooodt_opening_hours_to'
wp option delete 'byconsolewooodt_delivery_hours_from'
wp option delete 'byconsolewooodt_delivery_hours_to'
wp option delete 'byconsolewooodt_delivery_times'
wp option delete 'byconsolewooodt_takeaway_lable'
wp option delete 'byconsolewooodt_delivery_lable'
wp option delete 'byconsolewooodt_date_field_text'
wp option delete 'byconsolewooodt_time_field_text'
wp option delete 'byconsolewooodt_orders_delivered'
wp option delete 'byconsolewooodt_orders_pick_up'
wp option delete 'byconsolewooodt_select_tip_lable_text'
wp option delete 'byconsolewooodt_widget_field_position'
wp option delete 'byconsolewooodt_pickup_holidays'
wp option delete 'byconsolewooodt_delivery_holidays'
wp option delete 'byconsolewooodt_free_delivery_pickup_holiday1'
wp option delete 'byconsolewooodt_free_delivery_pickup_holiday2'
wp option delete 'byconsolewooodt_pickup_location'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byconsolewooodt_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byconsolewooodt_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byconsolewooodt_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byconsolewooodt_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byconsolewooodt_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byconsolewooodt_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byconsolewooodt_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byconsolewooodt_delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byconsolewooodt_delivery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byconsolewooodt_delivery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byconsolewooodt_delivery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byconsolewooodt_delivery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byconsolewooodt_pickup_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byconsolewooodt_pickup_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byconsolewooodt_pickup_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byconsolewooodt_pickup_location'"
