-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_mf_posttype_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_mfs');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_mfs');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_mfs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_mfs');

