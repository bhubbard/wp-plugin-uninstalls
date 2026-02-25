-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_wvc_jetpack_notice_dismissed', 'jetpack_active_modules', 'ayudawp_wvc_conditions', 'ayudawp_wvc_settings', 'ayudawp_wvc_migrated');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

