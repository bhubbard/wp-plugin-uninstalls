-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7pp_theme_message', 'cf7pp_theme_error_message', 'cf7pp_options', 'cf7pp_my_plugin_notice_shown');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7pp_enable', '_cf7pp_email', '_cf7pp_price', '_cf7pp_mobile', '_cf7pp_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7pp_enable', '_cf7pp_email', '_cf7pp_price', '_cf7pp_mobile', '_cf7pp_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7pp_enable', '_cf7pp_email', '_cf7pp_price', '_cf7pp_mobile', '_cf7pp_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7pp_enable', '_cf7pp_email', '_cf7pp_price', '_cf7pp_mobile', '_cf7pp_description');

