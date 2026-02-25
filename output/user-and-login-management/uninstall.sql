-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moul_mg_default_redirect_after_login_url', 'moul_mg_default_redirect_after_logout_url', 'moul_mg_protect_content_by_login_enabled', 'moul_mg_timeout_value', 'moul_mg_default_customer_key', 'moul_mg_default_api_key', 'moul_mg_admin_phone', 'moul_mg_local_message', 'moul_mg_public_pages_enable', 'moul_mg_public_pages_list', 'moul_mg_password', 'moul_mg_admin_customer_key', 'moul_mg_admin_notification_emails');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

