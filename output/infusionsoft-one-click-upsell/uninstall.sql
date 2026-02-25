-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('novaksolutions_upsell_default_image', 'novaksolutions_upsell_default_image_width', 'novaksolutions_upsell_default_image_height', 'novaksolutions_upsell_merchantaccount_id', 'novaksolutions_upsell_button_type', 'infusionsoft_sdk_app_name', 'infusionsoft_sdk_api_key', 'novaksolutions_upsell_test_merchantaccount_id', 'novaksolutions_upsell_default_success_url', 'novaksolutions_upsell_default_failure_url', 'novaksolutions_upsell_default_button_text', 'novaksolutions_upsell_default_action_set_id', 'novaksolutions_upsell_default_id', 'novaksolutions_upsell_default_class');
DELETE FROM wp_options WHERE option_name LIKE 'novaksolutions_upsell_default_%';

