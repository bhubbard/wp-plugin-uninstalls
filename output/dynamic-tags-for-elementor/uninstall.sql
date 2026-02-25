-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynatafo_activation_data', 'dynatafo_admin_notice');

