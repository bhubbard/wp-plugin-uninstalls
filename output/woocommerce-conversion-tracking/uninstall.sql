-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcct_installed', 'wcct_version', 'wcct_dismissable_notice', 'wcct_settings', 'woocommerce_wc_conv_tracking_settings', '_wcct_20_notice_dismiss', 'wcct_upgrade_to_20');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

