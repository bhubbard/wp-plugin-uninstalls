-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplng_custom_css', 'wplng_excluded_url', 'wplng_excluded_selectors', 'wplng_request_free_key', 'wplng_api_key_data', 'wplng_api_key', 'wplng_website_language', 'wplng_target_languages', 'wplng_flags_style', 'wplng_sitemap_xml', 'wplng_hreflang', 'wplng_translate_search', 'wplng_sitemap_xsl_override', 'wplng_load_in_progress', 'wplng_browser_language_redirect', 'wplng_website_flag', 'wplng_insert', 'wplng_theme', 'wplng_style', 'wplng_name_format', 'wplng_dictionary_entries', 'wplng_link_media_entries', 'wplng_api_overloaded', 'wplng_hb_last_update', 'wplng_version', 'wplng_api_key_error', 'wplng_cached_translations', 'wplng_cached_slugs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wplng_slug_translations', 'wplng_translation_translations', 'wplng_slug_original', 'wplng_slug_md5', 'wplng_slug_original_language_id', 'wplng_translation_discovery_url', 'wplng_translation_original_language_id', 'wplng_translation_md5', 'wplng_translation_original');
DELETE FROM wp_usermeta WHERE meta_key IN ('wplng_slug_translations', 'wplng_translation_translations', 'wplng_slug_original', 'wplng_slug_md5', 'wplng_slug_original_language_id', 'wplng_translation_discovery_url', 'wplng_translation_original_language_id', 'wplng_translation_md5', 'wplng_translation_original');
DELETE FROM wp_termmeta WHERE meta_key IN ('wplng_slug_translations', 'wplng_translation_translations', 'wplng_slug_original', 'wplng_slug_md5', 'wplng_slug_original_language_id', 'wplng_translation_discovery_url', 'wplng_translation_original_language_id', 'wplng_translation_md5', 'wplng_translation_original');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wplng_slug_translations', 'wplng_translation_translations', 'wplng_slug_original', 'wplng_slug_md5', 'wplng_slug_original_language_id', 'wplng_translation_discovery_url', 'wplng_translation_original_language_id', 'wplng_translation_md5', 'wplng_translation_original');

