-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hypeanimations_db_version', 'hype_reload_translations_notice');

