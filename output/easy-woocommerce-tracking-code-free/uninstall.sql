-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ewtc-email-subject', 'ewtc-email-text-body', 'ewtc-email-sending-test', 'ewtc-delete-options', 'ewtc-company-name', 'ewtc-email-sending-smtp', 'ewtc-email-sending-server', 'ewtc-email-sending-postmail', 'ewtc-email-sending-username', 'ewtc-email-sending-password', 'ewtc-email-sending-port', 'ewtc-email-sending-secure', 'woocommerce_version', 'ewtc-num-orders');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ewtc_courier_name', '_ewtc_tracking_code', '_ewtc_tracking_date', '_ewtc_email_sending_enable', '_billing_first_name', '_billing_last_name', '_ewtc_email_sent_status', '_ewtc_email_sent_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ewtc_courier_name', '_ewtc_tracking_code', '_ewtc_tracking_date', '_ewtc_email_sending_enable', '_billing_first_name', '_billing_last_name', '_ewtc_email_sent_status', '_ewtc_email_sent_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ewtc_courier_name', '_ewtc_tracking_code', '_ewtc_tracking_date', '_ewtc_email_sending_enable', '_billing_first_name', '_billing_last_name', '_ewtc_email_sent_status', '_ewtc_email_sent_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ewtc_courier_name', '_ewtc_tracking_code', '_ewtc_tracking_date', '_ewtc_email_sending_enable', '_billing_first_name', '_billing_last_name', '_ewtc_email_sent_status', '_ewtc_email_sent_date');

