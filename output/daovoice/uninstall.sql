-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('app_id', 'app_secert', 'is_ensure_user_id');

