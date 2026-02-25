-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eafs_supabase_url', 'eafs_supabase_anon_key', 'eafs_supabase_service_role_key', 'eafs_main_color', 'eafs_auth_method_email', 'eafs_auth_method_google', 'eafs_auth_method_magiclink', 'eafs_enable_welcome_email', 'eafs_welcome_sender_name', 'eafs_welcome_sender_email', 'eafs_welcome_subject', 'eafs_welcome_body', 'eafs_redirect_after_login', 'eafs_redirect_after_logout', 'eafs_forgot_password_url', 'eafs_password_reset_url', 'eafs_enable_keep_alive');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eafs_supabase_uuid');
DELETE FROM wp_usermeta WHERE meta_key IN ('eafs_supabase_uuid');
DELETE FROM wp_termmeta WHERE meta_key IN ('eafs_supabase_uuid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eafs_supabase_uuid');

