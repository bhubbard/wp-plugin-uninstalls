-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('single_post_meta_description_options_group');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('single_post_meta_custom_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('single_post_meta_custom_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('single_post_meta_custom_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('single_post_meta_custom_field');

