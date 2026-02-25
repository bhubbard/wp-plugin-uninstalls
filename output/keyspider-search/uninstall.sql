-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keyspider_organization_id', 'keyspider_api_key', 'keyspider_search_page');

