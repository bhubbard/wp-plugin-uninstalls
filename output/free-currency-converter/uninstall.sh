#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frcc_exchange_rates'
wp option delete 'frcc_selected_currencies'
wp option delete 'frcc_show_flag'
wp option delete 'frcc_show_symbol'
wp option delete 'frcc_show_name'
wp option delete 'frcc_show_value'
wp option delete 'frcc_display_format_order'
wp option delete 'frcc_box_width'
wp option delete 'frcc_box_height'
wp option delete 'frcc_last_sync'
wp option delete 'woocommerce_currency'
wp option delete 'frcc_default_currency'

# Delete Transients
wp transient delete 'frcc_show_review_notice'

