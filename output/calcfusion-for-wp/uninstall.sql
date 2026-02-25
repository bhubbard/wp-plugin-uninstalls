-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('calcfusion-wp-options', 'calcfusion_wp_admin_notices');

