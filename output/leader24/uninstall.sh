#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leader24_settings'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'leader24_wc_credentials'

# Delete Transients
wp transient delete 'leader24_agent_verified'

