-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jr_mt_settings', 'jr_mt_internal_settings', 'jr_mt_all_themes', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tab';

