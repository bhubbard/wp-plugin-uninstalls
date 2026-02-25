-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('menukaart_plugin_settings_have_changed', 'menukaart_general_settings', 'menukaart_styles_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mk_price', 'mk_wc_prod', 'mk_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('mk_price', 'mk_wc_prod', 'mk_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('mk_price', 'mk_wc_prod', 'mk_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mk_price', 'mk_wc_prod', 'mk_status');

