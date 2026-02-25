-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appinsights_options', 'applicationinsights_options', 'appinsights_token', 'appinsights_tenantid', 'appinsights_clientid', 'appinsights_clientsecret', 'appinsights_access', 'appinsights_cachetime', 'appinsights_refresh_token', 'appinsights_profile_list', 'appinsights_subscription_list', 'appinsights_component_list', 'appinsights_subscription', 'appinsights_component', 'appinsights_access_front', 'appinsights_access_back', 'appinsights_frontend', 'appinsights_refresh_token', 'appinsights_cleanup_timeouts');

