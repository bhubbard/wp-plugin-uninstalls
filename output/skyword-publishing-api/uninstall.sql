-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'skyword_plugin_options', 'skyword_api_plugin_options', 'coauthors_plus_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('skyword_metadescription', 'skyword_metatitle', 'skyword_seo_title', 'skyword_publication_keywords', 'skyword_tags', 'skyword_content_id', 'publication-name', 'skyword_publication_name', 'publication-access', 'skyword_publication_access', 'publication-geolocation', 'skyword_publication_geolocation', 'skyword_geolocation', 'publication-stocktickers', 'skyword_publication_stocktickers', 'skyword_stocktickers', 'publication-keywords', '_wp_attached_file', '_thumbnail_id', '_wp_attachment_image_alt', 'featured');
DELETE FROM wp_usermeta WHERE meta_key IN ('skyword_metadescription', 'skyword_metatitle', 'skyword_seo_title', 'skyword_publication_keywords', 'skyword_tags', 'skyword_content_id', 'publication-name', 'skyword_publication_name', 'publication-access', 'skyword_publication_access', 'publication-geolocation', 'skyword_publication_geolocation', 'skyword_geolocation', 'publication-stocktickers', 'skyword_publication_stocktickers', 'skyword_stocktickers', 'publication-keywords', '_wp_attached_file', '_thumbnail_id', '_wp_attachment_image_alt', 'featured');
DELETE FROM wp_termmeta WHERE meta_key IN ('skyword_metadescription', 'skyword_metatitle', 'skyword_seo_title', 'skyword_publication_keywords', 'skyword_tags', 'skyword_content_id', 'publication-name', 'skyword_publication_name', 'publication-access', 'skyword_publication_access', 'publication-geolocation', 'skyword_publication_geolocation', 'skyword_geolocation', 'publication-stocktickers', 'skyword_publication_stocktickers', 'skyword_stocktickers', 'publication-keywords', '_wp_attached_file', '_thumbnail_id', '_wp_attachment_image_alt', 'featured');
DELETE FROM wp_commentmeta WHERE meta_key IN ('skyword_metadescription', 'skyword_metatitle', 'skyword_seo_title', 'skyword_publication_keywords', 'skyword_tags', 'skyword_content_id', 'publication-name', 'skyword_publication_name', 'publication-access', 'skyword_publication_access', 'publication-geolocation', 'skyword_publication_geolocation', 'skyword_geolocation', 'publication-stocktickers', 'skyword_publication_stocktickers', 'skyword_stocktickers', 'publication-keywords', '_wp_attached_file', '_thumbnail_id', '_wp_attachment_image_alt', 'featured');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_created';

