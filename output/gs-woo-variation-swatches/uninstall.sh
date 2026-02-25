#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gs_swatches_plugin_version'
wp option delete 'gs_swatches_permalinks_flushed'

# Delete Transients
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_swatches_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_swatches_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_swatches_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_swatches_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondary_color'"
