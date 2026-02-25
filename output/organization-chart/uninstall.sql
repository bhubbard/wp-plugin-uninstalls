-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpda_chart_user_permissions', 'active_sitewide_plugins');

