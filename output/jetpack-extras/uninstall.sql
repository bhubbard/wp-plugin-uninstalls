-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_extras-options', 'text_direction');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sharing_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('sharing_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('sharing_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sharing_disabled');

