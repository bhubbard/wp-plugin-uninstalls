-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('corefeco_extended_disable_core_settings', 'disable_auto_updates');

