#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mosparo-integration-network-configuration'
wp option delete 'mosparo-integration-configuration'
wp option delete 'evf_validation_error'
wp option delete 'woocommerce_registration_generate_username'

# Clear Cron Jobs
wp cron event delete 'mosparo_integration_refresh_css_url_cache'

