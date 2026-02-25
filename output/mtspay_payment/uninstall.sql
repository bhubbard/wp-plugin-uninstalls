-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_mtspay_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals';
DELETE FROM wp_options WHERE option_name LIKE '%mtspay_action_message';

