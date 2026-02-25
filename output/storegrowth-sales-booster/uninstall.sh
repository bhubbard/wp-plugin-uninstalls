#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storegrowth_activation_redirect'
wp option delete 'active_sitewide_plugins'
wp option delete 'spsg_user_consent_data'
wp option delete 'spsg_ini_completion'
wp option delete 'woocommerce_currency_pos'
wp option delete 'spsg_bogo_dokan_vendors_settings'
wp option delete 'spsg_bogo_general_settings'
wp option delete 'spsg_bogo_migration_backup'
wp option delete 'spsg_countdown_timer_settings'
wp option delete 'spsg_direct_checkout_settings'
wp option delete 'spsg_floating_notification_bar_settings'
wp option delete 'spsg_fly_cart_settings'
wp option delete 'spsg_progressive_discount_banner_settings'
wp option delete 'spsg_discount_banner_flags'
wp option delete 'spsg_quick_view_settings'
wp option delete 'spsg_popup_products'
wp option delete 'spsg_stock_bar_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spsg_countdown_timer_discount_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spsg_countdown_timer_discount_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spsg_countdown_timer_discount_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spsg_countdown_timer_discount_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spsg_countdown_timer_discount_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spsg_countdown_timer_discount_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spsg_countdown_timer_discount_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spsg_countdown_timer_discount_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spsg_countdown_timer_discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spsg_countdown_timer_discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spsg_countdown_timer_discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spsg_countdown_timer_discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spsg_direct_checkout_button_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spsg_direct_checkout_button_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spsg_direct_checkout_button_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spsg_direct_checkout_button_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvi_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvi_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvi_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvi_images'"
