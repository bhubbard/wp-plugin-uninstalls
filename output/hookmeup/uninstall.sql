-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hookmeup_done_import', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%_preview';
DELETE FROM wp_options WHERE option_name LIKE '%_editor';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

