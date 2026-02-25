-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustpilot_settings', 'trustpilot_page_urls', 'trustpilot_custom_TrustBoxes', 'show_past_orders_initial', 'sync_in_progress', 'past_orders', 'failed_orders', 'trustpilot_just_installed', 'trustpilot_past_orders', 'trustpilot_failed_orders', 'trustpilot_plugin_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_email');

