-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quriobot_path', 'quriobot_init', 'quriobot_version');

