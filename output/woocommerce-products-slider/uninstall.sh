#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcps_plugin_info'
wp option delete 'wcps_settings'
wp option delete 'wcps_info'
wp option delete 'woocommerce_currency_pos'

# Clear Cron Jobs
wp cron event delete 'wcps_cron_upgrade_settings'
wp cron event delete 'wcps_cron_reset_migrate'
wp cron event delete 'wcps_cron_upgrade_wcps'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcps_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcps_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcps_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcps_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout_elements_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout_elements_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout_elements_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout_elements_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
