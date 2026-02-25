#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'

# Delete Transients
wp transient delete '_wc_ecp_admin_notices'
wp transient delete '_wc_ecp_admin_runtime_errors'

# Clear Cron Jobs
wp cron event delete 'ecp_flush_rewrite_rules'

