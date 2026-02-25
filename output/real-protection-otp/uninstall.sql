-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safeg_setting', 'enable_plugin', 'otp_enable', 'email_otp_disable', 'get_post', 'otp_woo_alert', 'woo_pending_alert', 'woo_processing_alert', 'woo_hold_alert', 'woo_fail_alert', 'woo_cancel_alert', 'woo_complete_alert', 'woo_refund_alert', 'woo_partially_alert', 'woo_shipped_alert', 'user_reg_alert', 'safeg_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('safeg_phone_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('safeg_phone_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('safeg_phone_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('safeg_phone_number');

