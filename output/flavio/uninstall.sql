-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flavio_token', 'flavio_plan_uuid', 'flavio_api_domain', 'flavio_signature', 'flavio_noindex_filter_enabled', 'flavio_structured_data_home_active', 'flavio_site_domain');

