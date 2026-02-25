-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aasrp_admin_init', 'aasrp_admin_actions', 'aasrp_tracking_id');

