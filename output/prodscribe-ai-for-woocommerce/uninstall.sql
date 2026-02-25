-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prodscribe_ai_provider', 'prodscribe_ai_api_key', 'prodscribe_ai_model', 'prodscribe_ai_include_image', 'prodscribe_ai_max_tokens', 'prodscribe_ai_trial_count');

