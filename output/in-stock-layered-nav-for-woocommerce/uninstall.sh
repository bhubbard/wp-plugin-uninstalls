#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_notify_no_stock_amount'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_layered_nav_query_post_ids_%' OR option_name LIKE '_site_transient_wc_layered_nav_query_post_ids_%'"

