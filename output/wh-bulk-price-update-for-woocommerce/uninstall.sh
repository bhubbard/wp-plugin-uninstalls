#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wh_bulk_price_update_block_size'
wp option delete 'wh_bulk_price_update_preview_block_size'
wp option delete 'wh_bulk_price_update_time_limit'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_en' OR option_name LIKE '_site_transient_%_en'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_de' OR option_name LIKE '_site_transient_%_de'"

