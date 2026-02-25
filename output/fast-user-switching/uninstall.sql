-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fus_settings', 'tikemp_recent_imp_users');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tikemp_recent_imp_users');
DELETE FROM wp_usermeta WHERE meta_key IN ('tikemp_recent_imp_users');
DELETE FROM wp_termmeta WHERE meta_key IN ('tikemp_recent_imp_users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tikemp_recent_imp_users');

