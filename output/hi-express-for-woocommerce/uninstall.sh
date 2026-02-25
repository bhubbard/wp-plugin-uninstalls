#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hi_express_settings'
wp option delete 'hi_express_webhook_registered'

# Delete Transients
wp transient delete 'hi_express_govs_simple_v2'
wp transient delete 'hi_express_govs_v5'
wp transient delete 'hi_express_order_statuses_v2'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hi_express_bulk_errors_%' OR option_name LIKE '_site_transient_hi_express_bulk_errors_%'"

