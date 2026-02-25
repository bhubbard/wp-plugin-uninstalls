-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cyberscap_seo_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cyberscap_seo_meta_title', '_cyberscap_seo_meta_description', '_cyberscap_seo_meta_keywords', '_cyberscap_seo_schema_markup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cyberscap_seo_meta_title', '_cyberscap_seo_meta_description', '_cyberscap_seo_meta_keywords', '_cyberscap_seo_schema_markup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cyberscap_seo_meta_title', '_cyberscap_seo_meta_description', '_cyberscap_seo_meta_keywords', '_cyberscap_seo_schema_markup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cyberscap_seo_meta_title', '_cyberscap_seo_meta_description', '_cyberscap_seo_meta_keywords', '_cyberscap_seo_schema_markup');

