-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpc_cafe_version', 'wpcafe_install_fingerprint', 'wpcafe_reservation_settings_options', 'wpcafe_db_migration', 'wpcafe_db_migration_pro', 'wpcafe_old_settings', 'wpcafe_v2_upgrade_detected', 'woocommerce_currency_pos', 'woocommerce_price_thousand_sep', 'woocommerce_price_num_decimals', 'wpc_table_layout', 'wpcafe_table_layout_migrated', 'wpcafe_table_layout_version', 'wpcafe_version', 'wpcafe_tools_settings', 'update_plugins', 'wpcafe_pro_incompatible');
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_ens_config';
DELETE FROM wp_options WHERE option_name LIKE 'wpcafe_rollback_versions_%';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_guest', 'wpc_menu_order_priority', 'wpc_location_name', 'wpc_booking_date', 'wpc_from_time', 'wpc_to_time', 'wpc_reservation_invoice', 'wpc_name', 'wpc_email', 'wpc_phone', 'wpc_message', 'wpc_total_guest', 'wpc_branch', 'reserv_extra', 'wpc_reservation_state', 'display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', '_table_name', 'wpc_booking_note', 'ens_flow_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_guest', 'wpc_menu_order_priority', 'wpc_location_name', 'wpc_booking_date', 'wpc_from_time', 'wpc_to_time', 'wpc_reservation_invoice', 'wpc_name', 'wpc_email', 'wpc_phone', 'wpc_message', 'wpc_total_guest', 'wpc_branch', 'reserv_extra', 'wpc_reservation_state', 'display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', '_table_name', 'wpc_booking_note', 'ens_flow_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_guest', 'wpc_menu_order_priority', 'wpc_location_name', 'wpc_booking_date', 'wpc_from_time', 'wpc_to_time', 'wpc_reservation_invoice', 'wpc_name', 'wpc_email', 'wpc_phone', 'wpc_message', 'wpc_total_guest', 'wpc_branch', 'reserv_extra', 'wpc_reservation_state', 'display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', '_table_name', 'wpc_booking_note', 'ens_flow_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_guest', 'wpc_menu_order_priority', 'wpc_location_name', 'wpc_booking_date', 'wpc_from_time', 'wpc_to_time', 'wpc_reservation_invoice', 'wpc_name', 'wpc_email', 'wpc_phone', 'wpc_message', 'wpc_total_guest', 'wpc_branch', 'reserv_extra', 'wpc_reservation_state', 'display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', '_table_name', 'wpc_booking_note', 'ens_flow_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'reserv_extra_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'reserv_extra_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'reserv_extra_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'reserv_extra_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notification_flow_flow_config';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notification_flow_flow_config';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notification_flow_flow_config';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notification_flow_flow_config';

