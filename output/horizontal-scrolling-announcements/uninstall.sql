-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('horizontal-scrolling-announcements', 'horizontal-scrolling-roles', '_hsas_activation_redirect');

