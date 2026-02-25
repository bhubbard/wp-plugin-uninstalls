-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdsqw_form_dynamic_fields', 'wdsqw_version');
DELETE FROM wp_options WHERE option_name LIKE 'wdsqw_oos_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wdsqw_enable_quote', 'wdsqw_enabled_roles', 'wdsqw_enable_quote_oos');
DELETE FROM wp_usermeta WHERE meta_key IN ('wdsqw_enable_quote', 'wdsqw_enabled_roles', 'wdsqw_enable_quote_oos');
DELETE FROM wp_termmeta WHERE meta_key IN ('wdsqw_enable_quote', 'wdsqw_enabled_roles', 'wdsqw_enable_quote_oos');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wdsqw_enable_quote', 'wdsqw_enabled_roles', 'wdsqw_enable_quote_oos');

