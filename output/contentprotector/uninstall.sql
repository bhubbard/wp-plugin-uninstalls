-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpwp_enable_global_protection', 'cpwp_global_password');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cpwp_password');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cpwp_password');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cpwp_password');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cpwp_password');

