-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embed_hubspot_api_key', 'embed_hubspot_salesforce_support', 'embed_hubspot_cache');

