-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fswrt_openai_key', 'fswrt_gemini_key', 'fswrt_stability_key', 'fswrt_gemini_model_name');

