#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swpsm_widget_settings'
wp option delete 'swpsm_template_options'
wp option delete 'woocommerce_thumbnail_cropping'
wp option delete 'woocommerce_thumbnail_cropping_custom_width'
wp option delete 'woocommerce_thumbnail_cropping_custom_height'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swpsm_individual_single_prod_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swpsm_individual_single_prod_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swpsm_individual_single_prod_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swpsm_individual_single_prod_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swpsm_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swpsm_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swpsm_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swpsm_wishlist'"
