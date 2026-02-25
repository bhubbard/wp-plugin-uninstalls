-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpt_configure_options', 'group_ptable_installed', 'group_ptable_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('table_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('table_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('table_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('table_id');

