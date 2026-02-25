-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azure_tenant_id', 'azure_client_id', 'azure_client_secret', 'azure_subscription_id', 'azure_resource_group', 'azure_frontdoor_name', 'azure_endpoint_name');

