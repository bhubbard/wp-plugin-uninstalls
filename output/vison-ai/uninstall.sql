-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vison_ai_token', 'vison_ai_domain', 'vison_ai_analysis_url', 'vison_ai_script_option');

