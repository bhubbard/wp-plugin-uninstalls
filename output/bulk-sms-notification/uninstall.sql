-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobsms_customer_key', 'mobsms_phone_meta_key', 'mobsms_api_key', 'mobsms_verify_customer', 'mobsms_email', 'mobsms_customer_token', 'mobsms_admin_phone', 'mobsms_app_secret', 'mobsms_activated_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_nicename');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_nicename');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_nicename');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_nicename');

