-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dc_bkash_installed', 'wcwpbkash_installed', 'wcwpbkash_version', 'woocommerce_bkash_settings', 'dc_bkash_token', 'dc_bkash_token_data');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dc_bkash_refunded', 'dc_bkash_refunded_amount', 'dc_bkash_refund_id', 'dc_bkash_refund_charge');
DELETE FROM wp_usermeta WHERE meta_key IN ('dc_bkash_refunded', 'dc_bkash_refunded_amount', 'dc_bkash_refund_id', 'dc_bkash_refund_charge');
DELETE FROM wp_termmeta WHERE meta_key IN ('dc_bkash_refunded', 'dc_bkash_refunded_amount', 'dc_bkash_refund_id', 'dc_bkash_refund_charge');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dc_bkash_refunded', 'dc_bkash_refunded_amount', 'dc_bkash_refund_id', 'dc_bkash_refund_charge');

