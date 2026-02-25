-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_excerpt_gen_api_key', 'ai_excerpt_gen_max_token', 'ai_excerpt_gen_post_types_enabled', 'ai_excerpt_gen_model');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('themencode_ai_generated_excerpt');
DELETE FROM wp_usermeta WHERE meta_key IN ('themencode_ai_generated_excerpt');
DELETE FROM wp_termmeta WHERE meta_key IN ('themencode_ai_generated_excerpt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('themencode_ai_generated_excerpt');

