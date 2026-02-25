-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ulm_single_template_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ulm_custom_get_post_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('ulm_custom_get_post_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('ulm_custom_get_post_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ulm_custom_get_post_template');

