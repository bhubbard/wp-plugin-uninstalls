#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpc_cafe_version'
wp option delete 'wpcafe_install_fingerprint'
wp option delete 'wpcafe_reservation_settings_options'
wp option delete 'wpcafe_db_migration'
wp option delete 'wpcafe_db_migration_pro'
wp option delete 'wpcafe_old_settings'
wp option delete 'wpcafe_v2_upgrade_detected'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wpc_table_layout'
wp option delete 'wpcafe_table_layout_migrated'
wp option delete 'wpcafe_table_layout_version'
wp option delete 'wpcafe_version'
wp option delete 'wpcafe_tools_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_never_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ens_config'"

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpcafe_rollback_versions_%' OR option_name LIKE '_site_transient_wpcafe_rollback_versions_%'"
wp transient delete 'wpcafe_pro_incompatible'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_rating_settings' OR option_name LIKE '_site_transient_%_rating_settings'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_guest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_guest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_guest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_guest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_menu_order_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_menu_order_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_menu_order_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_menu_order_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_location_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_location_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_location_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_location_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_booking_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_booking_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_booking_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_booking_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_from_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_from_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_from_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_from_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_to_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_to_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_to_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_to_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_reservation_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_reservation_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_reservation_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_reservation_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_total_guest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_total_guest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_total_guest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_total_guest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_branch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_branch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_branch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_branch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reserv_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reserv_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reserv_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reserv_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'reserv_extra_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'reserv_extra_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'reserv_extra_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'reserv_extra_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_reservation_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_reservation_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_reservation_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_reservation_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_table_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_table_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_table_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_table_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_booking_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_booking_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_booking_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_booking_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notification_flow_flow_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notification_flow_flow_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notification_flow_flow_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notification_flow_flow_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ens_flow_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ens_flow_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ens_flow_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ens_flow_id'"
