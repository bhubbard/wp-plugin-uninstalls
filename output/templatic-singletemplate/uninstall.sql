-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmpl_post_detail_plugin_active');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tmpl_wp_post_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('tmpl_wp_post_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('tmpl_wp_post_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tmpl_wp_post_template');

