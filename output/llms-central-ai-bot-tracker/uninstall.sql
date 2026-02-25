-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llmscbt_tracking_enabled', 'llmscbt_domain', 'llmscbt_llms_txt_enabled', 'llmscbt_llms_txt_content', 'llmscbt_consent_given');
DELETE FROM wp_options WHERE option_name LIKE 'llmscbt_%';

