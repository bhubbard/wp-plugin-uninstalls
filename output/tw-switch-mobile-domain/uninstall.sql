-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tw_mobile_domain', 'tw_mobile_theme', 'tw_bot_theme', 'tw_user_bot_theme');

