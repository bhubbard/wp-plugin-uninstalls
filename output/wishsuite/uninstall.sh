#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woolentor_others_tabs'
wp option delete 'wishsuite_do_activation_redirect'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wishsuite_installed'
wp option delete 'wishsuite_version'
wp option delete 'wishsuite_table_settings_tabs'
wp option delete 'wishsuite_settings_tabs'
wp option delete 'wishsuite_style_settings_tabs'

# Clear Cron Jobs
wp cron event delete 'wishsuite_remove_guest_old_wishlist_items'

