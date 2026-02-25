#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'invelity_product_feeds_setting_values'
wp option delete 'woocommerce_currency'
wp option delete 'wf_check_duplicate'

# Delete Transients
wp transient delete 'invelity-ikros-invoices-ad'
wp transient delete 'invelity-plugins-description'
wp transient delete 'invelity-plugins-ad'

# Clear Cron Jobs
wp cron event delete 'invelity_product_feed_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invelity_google_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invelity_google_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invelity_google_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invelity_google_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmr_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmr_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmr_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmr_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invelity_heureka_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invelity_heureka_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invelity_heureka_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invelity_heureka_category'"
