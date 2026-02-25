-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yydev_show_all_pages_url_main_menu', 'yydev_stop_plugins_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow');

