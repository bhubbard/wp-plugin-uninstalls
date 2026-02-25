-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdxn_ig_plugin_permalinks_flushed', 'cdxn_ig_plugin_activation_time', 'carbon_custom_sidebars');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cdxn_ig_rate_the_plugin', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('cdxn_ig_rate_the_plugin', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('cdxn_ig_rate_the_plugin', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cdxn_ig_rate_the_plugin', '_wp_page_template');

