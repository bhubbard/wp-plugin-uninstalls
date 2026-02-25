-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('platformly-woocommerce', 'platformly_wc_cid', 'active_sitewide_plugins', 'ply_plugin_cid', 'ply_project_code_active');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('platformly-woocommerce', 'paltformly_wc_is_subscribed');
DELETE FROM wp_usermeta WHERE meta_key IN ('platformly-woocommerce', 'paltformly_wc_is_subscribed');
DELETE FROM wp_termmeta WHERE meta_key IN ('platformly-woocommerce', 'paltformly_wc_is_subscribed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('platformly-woocommerce', 'paltformly_wc_is_subscribed');

