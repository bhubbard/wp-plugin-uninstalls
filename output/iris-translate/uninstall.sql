-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iris_translate_options', 'iris_translate_seo_options', 'iris_translate_url_translations', 'iris_custom_translations', 'iris_url_translations');

