#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'firevert_settings'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'logger_enabled'

# Delete Transients
wp transient delete 'firevert_validation_errors'
wp transient delete 'firevert_module_disabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iwo_price_lowest_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iwo_price_lowest_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iwo_price_lowest_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iwo_price_lowest_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'firevert_promo_time_widget_display_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'firevert_promo_time_widget_display_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'firevert_promo_time_widget_display_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'firevert_promo_time_widget_display_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'firevert_spectator_views_display_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'firevert_spectator_views_display_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'firevert_spectator_views_display_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'firevert_spectator_views_display_position'"
