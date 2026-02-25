-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsm_quote', 'facebook_comments_master_system_wide_app', 'facebook_comments_master_system_wide_app_id', 'facebook_comments_master_system_wide_user', 'facebook_comments_master_system_wide_user_id', 'facebook_comments_master_system_wide_lang', 'facebook_comments_master_system_wide_lang_set');

