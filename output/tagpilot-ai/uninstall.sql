-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tagpilot_ai_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tagpilot_ai_terms_log', 'tagpilot_ai_content_log');
DELETE FROM wp_usermeta WHERE meta_key IN ('tagpilot_ai_terms_log', 'tagpilot_ai_content_log');
DELETE FROM wp_termmeta WHERE meta_key IN ('tagpilot_ai_terms_log', 'tagpilot_ai_content_log');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tagpilot_ai_terms_log', 'tagpilot_ai_content_log');

