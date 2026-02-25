-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tc_tracked_urls', 'tablecrafter_collaboration_enabled', 'tablecrafter_collaboration_logging', 'tablecrafter_collaboration_logs', 'tablecrafter_airtable_token', 'tc_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'tc_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'tc_export_%';

