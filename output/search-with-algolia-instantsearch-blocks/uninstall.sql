-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aib_algolia_app_id', 'aib_algolia_searchonly_api_key');

