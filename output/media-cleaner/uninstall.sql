-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpseo_titles', 'wpmc_options', 'sidebars_widgets', 'woocommerce_placeholder_image', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE 'wpmc_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', 'attachments', '_downloadable_files', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_opengraph-image-id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', 'attachments', '_downloadable_files', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_opengraph-image-id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', 'attachments', '_downloadable_files', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_opengraph-image-id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', 'attachments', '_downloadable_files', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_opengraph-image-id');

