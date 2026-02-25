-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tot_options', 'tot_taxes_disabled_due_to_core', 'tot_logs', 'tot_flash_notices', 'tot_ssl_misconfiguration', 'tot_hook_log', 'tot_version', 'old_tot_keys', 'tot_plugin_updates_log', 'woocommerce_checkout_page_id', 'tot-plugin-verification-tab', 'tot-plugin-report-abuse-button', 'tot-profile_tab_verification_roles-select', 'tot-plugin-verification-permission', 'tot-plugin-verification-tab-account', 'tot-plugin-verified-indicator-account', 'um_options', 'woocommerce_default_country', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'pickup_location_pickup_locations', 'tot_orders_to_sync', 'admin_access_token', 'tot_keys', 'tot_license_error_state', 'tot_license_already_handled');
DELETE FROM wp_options WHERE option_name LIKE 'tot_previous_plugin_version_%';
DELETE FROM wp_options WHERE option_name LIKE 'tot-dismissed-%';
DELETE FROM wp_options WHERE option_name LIKE 'tot_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'excise%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'tot_email_verification', 'tot_confirmation_token', 'tot_approval_status_log', 'tot_approval_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'tot_email_verification', 'tot_confirmation_token', 'tot_approval_status_log', 'tot_approval_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'tot_email_verification', 'tot_confirmation_token', 'tot_approval_status_log', 'tot_approval_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'tot_email_verification', 'tot_confirmation_token', 'tot_approval_status_log', 'tot_approval_status');

