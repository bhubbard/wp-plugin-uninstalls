#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yuko_plugin_options'
wp option delete 'yuko_carousel_html_timestamp'
wp option delete 'yuko_previous_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'yuko_general_settings'
wp option delete 'yuko_settings_data'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'yuko_current_version'
wp option delete 'yuko_all_reviews_view_content'
wp option delete 'yuko_carousel_html'
wp option delete 'yuko_floating_product_view_content'

# Delete Transients
wp transient delete 'yuko_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yuko_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yuko_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yuko_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yuko_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yuko_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yuko_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yuko_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yuko_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yuko_questions_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yuko_questions_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yuko_questions_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yuko_questions_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yuko_local_updated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yuko_local_updated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yuko_local_updated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yuko_local_updated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yuko_product_last_updated_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yuko_product_last_updated_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yuko_product_last_updated_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yuko_product_last_updated_time'"
