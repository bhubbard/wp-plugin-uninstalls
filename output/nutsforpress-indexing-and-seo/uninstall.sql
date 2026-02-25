-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hello_elementor_settings_description_meta_tag', '_nfproot_plugins_settings', '_nfp_root_settings', '_nfp_settings', 'woocommerce_shop_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nfpndx_llms', '_nfpndx_no_index', '_nfpndx_meta_title', '_yoast_wpseo_title', '_nfpndx_meta_title_blogname', '_nfpndx_meta_description', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nfpndx_llms', '_nfpndx_no_index', '_nfpndx_meta_title', '_yoast_wpseo_title', '_nfpndx_meta_title_blogname', '_nfpndx_meta_description', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nfpndx_llms', '_nfpndx_no_index', '_nfpndx_meta_title', '_yoast_wpseo_title', '_nfpndx_meta_title_blogname', '_nfpndx_meta_description', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nfpndx_llms', '_nfpndx_no_index', '_nfpndx_meta_title', '_yoast_wpseo_title', '_nfpndx_meta_title_blogname', '_nfpndx_meta_description', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt', 'description');

