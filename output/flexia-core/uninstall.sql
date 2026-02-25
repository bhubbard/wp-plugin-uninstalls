-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpins_allow_tracking', 'wpins_last_track_time', 'wpins_block_notice', 'wpins_collect_email', 'wpins_admin_emails', 'wpdeveloper_plugins_data');
DELETE FROM wp_options WHERE option_name LIKE '%_force_tracked';
DELETE FROM wp_options WHERE option_name LIKE '%_migrated';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';

