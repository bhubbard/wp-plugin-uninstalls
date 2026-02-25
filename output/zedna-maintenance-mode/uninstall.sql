-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zednamm_maintenance_role', 'zednamm_redirect_to_login', 'zednamm_message');

