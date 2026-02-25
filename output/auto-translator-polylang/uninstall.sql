-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atfp_api_key', 'atfp_translate_shortcodes', 'atfp_response_error', 'atfp_translated_entities', 'atfp_translated_taxonomies', 'atfp_translated_single_post', 'atfp_translated_single_term');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('atfp_poly_language', 'atfp_reviewed');
DELETE FROM wp_usermeta WHERE meta_key IN ('atfp_poly_language', 'atfp_reviewed');
DELETE FROM wp_termmeta WHERE meta_key IN ('atfp_poly_language', 'atfp_reviewed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('atfp_poly_language', 'atfp_reviewed');

