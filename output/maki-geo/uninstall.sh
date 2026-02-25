#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mgeo_geo_rules'
wp option delete 'mgeo_client_server_mode'
wp option delete 'mgeo_api_key'
wp option delete 'mgeo_monthly_requests'
wp option delete 'mgeo_request_limit'

