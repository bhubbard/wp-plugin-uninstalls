#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'azure_tenant_id'
wp option delete 'azure_client_id'
wp option delete 'azure_client_secret'
wp option delete 'azure_subscription_id'
wp option delete 'azure_resource_group'
wp option delete 'azure_frontdoor_name'
wp option delete 'azure_endpoint_name'

