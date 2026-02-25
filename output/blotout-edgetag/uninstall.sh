#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edgetag_init'
wp option delete 'edgetag_url'
wp option delete 'edgetag_selectors'
wp option delete 'edgetag_script'
wp option delete 'edgetag_newsletter_event_name'
wp option delete 'edgetag_purchase_subtotal_only'
wp option delete 'woocommerce_price_num_decimals'

