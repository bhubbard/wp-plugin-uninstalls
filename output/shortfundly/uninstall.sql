-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shortfundly_plugin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shortfundly_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('shortfundly_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('shortfundly_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shortfundly_id');

