-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lndr_settings', 'lndr_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lndr_project_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('lndr_project_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('lndr_project_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lndr_project_id');

