-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('manage-inactive-subsites-deactivate', 'manage_inactive_subsites_interval_type', 'manage_inactive_subsites_interval_size', 'manage_inactive_subsites_action');
DELETE FROM wp_options WHERE option_name LIKE 'mis_cron_query_%';

