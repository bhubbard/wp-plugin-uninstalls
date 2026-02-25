-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rum_post_cta_plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rum_post_cta_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('rum_post_cta_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('rum_post_cta_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rum_post_cta_id');

