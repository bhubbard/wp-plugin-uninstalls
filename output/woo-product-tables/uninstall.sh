#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_opts_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_sent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats'"
wp option delete 'woocommerce_enable_review_rating'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_price_calculator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_price_calculator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_price_calculator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_price_calculator'"
