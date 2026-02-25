-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_subtitle_woocommerce_enabled', 'wp_subtitle_woocommerce_show_on_single', 'wp_subtitle_woocommerce_show_in_loop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'wps_subtitle');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'wps_subtitle');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'wps_subtitle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'wps_subtitle');

