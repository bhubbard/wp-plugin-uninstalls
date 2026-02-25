-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('haayal_ai_proxy_quota_remaining', 'haayal_slug_translator_dismissed_notice', 'haayal_dismissed_review_notice', '_ai_slug_generated_slugs_counter', 'ai_slug_translator_settings', '_ai_slug_error_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_generated_slug', '_slug_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('_generated_slug', '_slug_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('_generated_slug', '_slug_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_generated_slug', '_slug_source');

