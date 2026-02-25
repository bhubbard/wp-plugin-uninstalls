-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdaiw_app_id', 'cdaiw_app_secret', 'cleandesk_app_id', 'cleandesk_app_secret');

