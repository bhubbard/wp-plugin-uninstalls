#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcfp_api_key'
wp option delete 'wcfp_test_ip_address'
wp option delete 'wcfp_pricing_api_url'
wp option delete 'wcfp_pricing_refresh_interval'

# Delete Transients
wp transient delete 'wcfp_test_connection_result'

