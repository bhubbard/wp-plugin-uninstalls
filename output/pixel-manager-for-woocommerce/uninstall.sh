#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmw_pixels_option'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_currency'
wp option delete 'pmw_conversion_api_logs'
wp option delete 'pmw_admin_notices'
wp option delete 'pmw_api_store'
wp option delete 'pmw_migration'

