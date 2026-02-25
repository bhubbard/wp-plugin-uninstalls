-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated');
DELETE FROM wp_options WHERE option_name LIKE 'plugins_archive_result_post_notice_%';

