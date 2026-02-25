#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'lofty_idx_needs_rewrite_flush'
wp option delete 'lofty_idx_secret_key'
wp option delete 'lofty_idx_listing_page_id'
wp option delete 'lofty_idx_listing_detail_page_id'
wp option delete 'lofty_idx_sold_listing_page_id'
wp option delete 'lofty_idx_sold_detail_page_id'
wp option delete 'lofty_idx_db_version'
wp option delete 'lofty_idx_custom_css'
wp option delete 'lofty_idx_custom_js'
wp option delete 'lofty_idx_custom_html'
wp option delete 'widget_lofty_widget_quick_search'
wp option delete 'lofty_idx_settings'

