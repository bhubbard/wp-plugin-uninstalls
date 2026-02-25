-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'wooccm_advanced_custom_css', 'wccs_settings', 'wooccm_checkout_force_shipping_address', 'wooccm_checkout_force_create_account', 'wooccm_checkout_order_notes_label', 'wooccm_checkout_order_notes_placeholder', 'wooccm_checkout_remove_order_notes', 'wooccm_checkout_checkout_form_before_message', 'wooccm_checkout_checkout_form_after_message', 'wooccm_order_upload_files', 'wooccm_order_upload_files_order_status', 'wooccm_order_custom_fields', 'wooccm_order_custom_fields_status', 'wooccm_order_upload_files_title', 'wooccm_additional_position', 'woocommerce_ship_to_destination', 'wooccm_order_custom_fields_title', 'jetpack_is_single_user', 'quadlayers_news_feed');
DELETE FROM wp_options WHERE option_name LIKE 'ql_plugin_feedback_%';

