#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lpac_delete_settings_on_uninstall'
wp option delete 'lpac_enabled'
wp option delete 'lpac_checkout_map_orientation'
wp option delete 'lpac_enable_delivery_map_link_in_email'
wp option delete 'lpac_email_delivery_map_link_location'
wp option delete 'orderable_settings'
wp option delete 'lpac_email_delivery_map_emails'
wp option delete 'lpac_email_delivery_map_link_type'
wp option delete 'woocommerce_email_base_color'
wp option delete 'lpac_google_maps_api_key'
wp option delete 'lpac_show_selected_store_in_emails'
wp option delete 'lpac_store_select_label'
wp option delete 'lpac_store_locations'
wp option delete 'lpac_map_visibility_rules_order'
wp option delete 'lpac_wc_shipping_methods'
wp option delete 'lpac_wc_shipping_classes'
wp option delete 'lpac_hide_map_for_guests'
wp option delete 'lpac_map_show_for_coupons'
wp option delete 'lpac_wc_shipping_classes_show_hide'
wp option delete 'lpac_map_starting_coordinates'
wp option delete 'lpac_general_map_zoom_level'
wp option delete 'lpac_allow_clicking_on_map_icons'
wp option delete 'lpac_map_background_color'
wp option delete 'lpac_remove_address_plus_code'
wp option delete 'lpac_enable_places_autocomplete'
wp option delete 'lpac_places_autocomplete_fields'
wp option delete 'lpac_places_autocomplete_hide_map'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'lpac_auto_detect_location'
wp option delete 'lpac_checkout_page_map_default_type'
wp option delete 'kikote_dissect_customer_address'
wp option delete 'kikote_disabled_map_controls'
wp option delete 'lpac_map_directions_provider'
wp option delete 'lpac_installed_at_version'
wp option delete 'lpac_first_install_date'
wp option delete 'lpac_migrated__add_address_to_store_locations'
wp option delete 'lpac_migrated__add_should_calculate_per_distance_unit_field'
wp option delete 'lpac_cost_by_distance_range_rangelist'
wp option delete 'lpac_migrated__cost_by_distance_standard'
wp option delete 'lpac_enable_shipping_cost_by_distance_feature'
wp option delete 'lpac_enable_cost_by_distance_range'
wp option delete 'lpac_enable_cost_by_store_distance'
wp option delete 'lpac_enable_cost_by_distance_standard'
wp option delete 'lpac_migrated__enabled_shipping_restrictions_option'
wp option delete 'lpac_regions_min_max_order_total'
wp option delete 'lpac_enable_shipping_restrictions'
wp option delete 'kikote_migrated__store_locations_shipping_method'
wp option delete 'lpac_force_map_use'
wp option delete 'lpac_force_places_autocomplete'
wp option delete 'lpac_force_places_autocomplete_notice_text'
wp option delete 'lpac_enable_store_location_selector'
wp option delete 'lpac_enable_search_in_store_locations'
wp option delete 'lpac_enable_cost_by_store_location'
wp option delete 'lpac_distance_matrix_distance_unit'
wp option delete 'lpac_cost_by_store_distance_delivery_prices'
wp option delete 'lpac_cost_by_store_location_delivery_prices'
wp option delete 'lpac_show_store_locations_on_map'
wp option delete 'lpac_map_instructions_text'
wp option delete 'lpac_order_received_page_map_height'
wp option delete 'lpac_order_received_page_map_width'
wp option delete 'lpac_view_order_page_map_height'
wp option delete 'lpac_view_order_page_map_width'
wp option delete 'lpac_checkout_page_map_height'
wp option delete 'lpac_checkout_page_map_width'
wp option delete 'lpac_hide_troubleshooting_admin_checkout_notice'
wp option delete 'active_sitewide_plugins'
wp option delete 'lpac_google_map_region'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lpac_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lpac_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lpac_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lpac_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lpac_user_preferred_store_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lpac_user_preferred_store_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lpac_user_preferred_store_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lpac_user_preferred_store_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kikote_map_builder_shortcode_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kikote_map_builder_shortcode_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kikote_map_builder_shortcode_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kikote_map_builder_shortcode_settings'"
