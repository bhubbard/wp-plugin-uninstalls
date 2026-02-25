#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sppcfw_basic'
wp option delete 'sppcfw_advanced'
wp option delete 'sppcfw_plugin_do_activation_redirect'
wp option delete 'sppcfw_myplugin_activation_date'
wp option delete 'sppcfw_review_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webcfwc_variation_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webcfwc_variation_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webcfwc_variation_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webcfwc_variation_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sppcfw_category_based_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sppcfw_category_based_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sppcfw_category_based_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sppcfw_category_based_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sppcfw_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sppcfw_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sppcfw_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sppcfw_product'"
