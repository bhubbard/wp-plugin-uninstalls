#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'byconsolewooodtrestro_pickup_timeslot'
wp option delete 'byconsolewooodtrestro_delivery_timeslot'
wp option delete 'byconsolewooodtrestro_dinein_timeslot'
wp option delete 'byconsolewooodtrestro_free_plugin_activation_date'
wp option delete 'byconsolewooodtrestro_order_type'
wp option delete 'byconsolewooodtrestro_takeaway_lable'
wp option delete 'byconsolewooodtrestro_delivery_lable'
wp option delete 'byconsolewooodtrestro_dinein_lable'
wp option delete 'byconsolewooodtrestro_guest_no'
wp option delete 'byconsolewooodtrestro_guest_purpose'
wp option delete 'byconsolewooodtrestro_widget_field_position'
wp option delete 'byconsolewooodtrestro_date_field_text'
wp option delete 'byconsolewooodtrestro_time_field_text'
wp option delete 'byconsolewooodtrestro_guest_count_lable'
wp option delete 'byconsolewooodtrestro_guest_purpose_lable'
wp option delete 'byconsolewooodtrestro_delivery_times'
wp option delete 'byconsolewooodtrestro_delivery_hours_from'
wp option delete 'byconsolewooodtrestro_pickup_hours_from'
wp option delete 'byconsolewooodtrestro_dinein_hours_from'
wp option delete 'byconsolewooodtrestro_delivery_hours_to'
wp option delete 'byconsolewooodtrestro_pickup_hours_to'
wp option delete 'byconsolewooodtrestro_dinein_hours_to'
wp option delete 'byconsolewooodtrestro_preorder_days'
wp option delete 'byconsolewooodtrestro_enable_timeslot'
wp option delete 'byconsolewooodtrestro_time_field_validation'
wp option delete 'byconsolewooodtrestro_guest_count_field_text'
wp option delete 'byconsolewooodtrestro_guest_purpose_field_text'
wp option delete 'byconsolewooodtrestro_chekout_page_order_type_label'
wp option delete 'byconsolewooodtrestro_chekout_page_date_label'
wp option delete 'byconsolewooodtrestro_chekout_page_time_label'
wp option delete 'byconsolewooodtrestro_chekout_page_section_heading'
wp option delete 'byconsolewooodtrestro_dinein_guest_number_lable'
wp option delete 'byconsolewooodtrestro_dinein_guest_purpose_lable'
wp option delete 'byconsolewooodtrestro_orders_delivered'
wp option delete 'byconsolewooodtrestro_orders_pick_up'
wp option delete 'byconsolewooodtrestro_orders_dinein'
wp option delete 'byconsolewooodtrestro_hours_format'
wp option delete 'byconsolewooodtrestro_pickup_holidays'
wp option delete 'byconsolewooodtrestro_delivery_holidays'
wp option delete 'byconsolewooodtrestro_dinein_holidays'
wp option delete 'byconsolewooodt_hours_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_byconsolewooodtrestro_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_byconsolewooodtrestro_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_byconsolewooodtrestro_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_byconsolewooodtrestro_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_byconsolewooodtrestro_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_byconsolewooodtrestro_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_byconsolewooodtrestro_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_byconsolewooodtrestro_delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_byconsolewooodtrestro_order_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_byconsolewooodtrestro_order_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_byconsolewooodtrestro_order_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_byconsolewooodtrestro_order_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_byconsolewooodtrestro_guest_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_byconsolewooodtrestro_guest_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_byconsolewooodtrestro_guest_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_byconsolewooodtrestro_guest_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_byconsolewooodtrestro_guest_purpose'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_byconsolewooodtrestro_guest_purpose'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_byconsolewooodtrestro_guest_purpose'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_byconsolewooodtrestro_guest_purpose'"
