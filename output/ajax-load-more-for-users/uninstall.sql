-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alm_users_license_key', 'alm_users_extension_pro_admin_notice');

