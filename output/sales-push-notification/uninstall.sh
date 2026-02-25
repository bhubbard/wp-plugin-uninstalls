#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spn_license_data'
wp option delete 'spn_plugin_version'
wp option delete 'spn_plugin_plugin_version'
wp option delete 'spn_license_health_check'
wp option delete 'spn_placeholder_image_id'
wp option delete 'spn_placeholder_registered'
wp option delete 'spn_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_spn_license_check_%' OR option_name LIKE '_site_transient_spn_license_check_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_product_rating_%' OR option_name LIKE '_site_transient_wc_product_rating_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_product_reviews_%' OR option_name LIKE '_site_transient_wc_product_reviews_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_product_total_rating_%' OR option_name LIKE '_site_transient_wc_product_total_rating_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
