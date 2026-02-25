-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eeBFEL_ShowLogout', 'eeBFEL_Redirect', 'eeBFEL_DenyRoles');

