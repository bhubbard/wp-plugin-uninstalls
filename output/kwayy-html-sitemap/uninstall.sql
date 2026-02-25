-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kwayyhs_do_activation_redirect', 'kwayyhs_sortorder', 'global-admin-bar-roles', 'kwayyhs_exclude');
DELETE FROM wp_options WHERE option_name LIKE 'kwayyhs_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'kwayyhs_newname_%';

