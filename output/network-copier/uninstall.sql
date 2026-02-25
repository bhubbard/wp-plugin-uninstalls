-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nmc_activity_log', 'new_option_name', 'some_other_option', 'option_etc');
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';

