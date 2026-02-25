-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpatt_option_localization', 'wpatt_option_date_localization', 'wpatt_show_orderby', 'wpatt_option_showdate', 'wpatt_option_includeimages', 'wpatt_option_targetblank', 'wpatt_option_restrictload', 'wpatt_counter', 'wpatt_excludelogged_counter', 'wpa_ict', 'wpa_template', 'wpa_template_custom');
DELETE FROM wp_options WHERE option_name LIKE 'wpatt_enable_metabox_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpatt_enable_display_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpa_off');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpa_off');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpa_off');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpa_off');

