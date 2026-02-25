-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpc_postmeta', 'dpc_content', 'update_dpc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_set_default_values');
DELETE FROM wp_usermeta WHERE meta_key IN ('_set_default_values');
DELETE FROM wp_termmeta WHERE meta_key IN ('_set_default_values');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_set_default_values');

