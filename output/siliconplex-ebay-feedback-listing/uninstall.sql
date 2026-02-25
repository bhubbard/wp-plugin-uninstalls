-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_ebay_auth_user_id', 'sp_ebay_auth_token', 'sp_ebay_auth_app_id', 'sp_ebay_auth_cert_id', 'sp_ebay_auth_dev_id', 'sp_ebay_feedbacks_list_title', 'sp_ebay_feedbacks_datetime_format');

