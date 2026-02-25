#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'appinsights_options'
wp option delete 'appinsights_token'
wp option delete 'appinsights_tenantid'
wp option delete 'appinsights_clientid'
wp option delete 'appinsights_clientsecret'
wp option delete 'appinsights_access'
wp option delete 'appinsights_cachetime'
wp option delete 'appinsights_refresh_token'
wp option delete 'appinsights_profile_list'
wp option delete 'appinsights_subscription_list'
wp option delete 'appinsights_component_list'
wp option delete 'appinsights_subscription'
wp option delete 'appinsights_component'
wp option delete 'appinsights_access_front'
wp option delete 'appinsights_access_back'
wp option delete 'appinsights_frontend'

# Delete Transients
wp transient delete 'appinsights_refresh_token'
wp transient delete 'appinsights_cleanup_timeouts'

