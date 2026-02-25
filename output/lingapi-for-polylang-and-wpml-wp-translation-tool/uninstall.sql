-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tt_api_key', 'tt_default_post_status', 'turbotranslations_categories_cache', 'turbotranslations_categories_cache_date', 'turbotranslations_pairs_cache', 'turbotranslations_pairs_cache_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('turbotranslations_status', '_wpml_post_translation_editor_native');
DELETE FROM wp_usermeta WHERE meta_key IN ('turbotranslations_status', '_wpml_post_translation_editor_native');
DELETE FROM wp_termmeta WHERE meta_key IN ('turbotranslations_status', '_wpml_post_translation_editor_native');
DELETE FROM wp_commentmeta WHERE meta_key IN ('turbotranslations_status', '_wpml_post_translation_editor_native');

