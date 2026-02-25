-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcbilling_hide_fn', 'wcbilling_hide_zerototal', 'woo_checkout_hide_shipping_fields_toggle', 'woo_checkout_hide_billing_fields_toggle', 'woo_checkout_api_get_response', 'wp_zamartz_admin_event_tracker', 'zamartz_api_admin_notice_data', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%cron_log';
DELETE FROM wp_options WHERE option_name LIKE '%api_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%hide_shipping_fields_toggle';
DELETE FROM wp_options WHERE option_name LIKE '%hide_billing_fields_toggle';
DELETE FROM wp_options WHERE option_name LIKE '%results_returned';
DELETE FROM wp_options WHERE option_name LIKE '%billing_conditions';
DELETE FROM wp_options WHERE option_name LIKE '%billing_operator';
DELETE FROM wp_options WHERE option_name LIKE '%billing_condition_subfield';
DELETE FROM wp_options WHERE option_name LIKE '%api_password';
DELETE FROM wp_options WHERE option_name LIKE '%api_product_id';
DELETE FROM wp_options WHERE option_name LIKE '%api_purchase_emails';
DELETE FROM wp_options WHERE option_name LIKE '%api_get_response';
DELETE FROM wp_options WHERE option_name LIKE '%api_admin_notice_data';
DELETE FROM wp_options WHERE option_name LIKE '%network_admin_api_status';

