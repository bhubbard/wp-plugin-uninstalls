-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiknowledgebase_api_key', 'aiknowledgebase_assistant_details', 'wmc_redirect', 'aiknowledgebase_customize_assistant');

