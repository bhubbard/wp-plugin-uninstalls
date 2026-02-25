-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bravepopup_settings', 'brave_bfcm2020', 'bravepop_license_status', 'bravepop_license_key', 'brave_plugin_rated', 'bravepop_redirect_to_welcome', '_bravepop_aweber_accountID', '_bravepop_aweber_tkn', 'newsletter_subscription_lists', 'newsletter_lists', 'newsletter_profile', 'woocommerce_shop_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('popup_views', 'popup_conversion', 'popup_data', 'popup_parentID', 'popup_abtest', 'popup_schedule', 'brave_hidden_popups', 'bravepop_uncanny_actions', 'popup_type', 'popup_goal', 'popup_goal_action', 'popup_placement', 'popup_devices');
DELETE FROM wp_usermeta WHERE meta_key IN ('popup_views', 'popup_conversion', 'popup_data', 'popup_parentID', 'popup_abtest', 'popup_schedule', 'brave_hidden_popups', 'bravepop_uncanny_actions', 'popup_type', 'popup_goal', 'popup_goal_action', 'popup_placement', 'popup_devices');
DELETE FROM wp_termmeta WHERE meta_key IN ('popup_views', 'popup_conversion', 'popup_data', 'popup_parentID', 'popup_abtest', 'popup_schedule', 'brave_hidden_popups', 'bravepop_uncanny_actions', 'popup_type', 'popup_goal', 'popup_goal_action', 'popup_placement', 'popup_devices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('popup_views', 'popup_conversion', 'popup_data', 'popup_parentID', 'popup_abtest', 'popup_schedule', 'brave_hidden_popups', 'bravepop_uncanny_actions', 'popup_type', 'popup_goal', 'popup_goal_action', 'popup_placement', 'popup_devices');

