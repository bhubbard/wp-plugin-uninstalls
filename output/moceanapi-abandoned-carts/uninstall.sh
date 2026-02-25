#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moceanapi_abandoned_carts_hide_images'
wp option delete 'moceanapi_abandoned_carts_bulk_email_content'
wp option delete 'moceanapi_abandoned_carts_key'
wp option delete 'moceanapi_abandoned_carts_secret'
wp option delete 'moceanapi_abandoned_carts_from'
wp option delete 'moceanapi_abandoned_carts_bulk_content'
wp option delete 'moceanapi_abandoned_carts_lift_email'
wp option delete 'moceanapi_abandoned_carts_exclude_ghost_carts'
wp option delete 'moceanapi_abandoned_carts_email_content'
wp option delete 'moceanapi_abandoned_carts_notification_email'
wp option delete 'moceanapi_abandoned_carts_notification_frequency'
wp option delete 'moceanapi_abandoned_carts_content'
wp option delete 'moceanapi_abandoned_carts_notification_sms'
wp option delete 'moceanapi_abandoned_carts_sms_notification_frequency'
wp option delete 'moceanapi_abandoned_carts_exit_intent_status'
wp option delete 'moceanapi_abandoned_carts_exit_intent_test_mode'
wp option delete 'moceanapi_abandoned_carts_exit_intent_type'
wp option delete 'moceanapi_abandoned_carts_exit_intent_main_color'
wp option delete 'moceanapi_abandoned_carts_exit_intent_inverse_color'
wp option delete 'moceanapi_abandoned_carts_exit_intent_image'
wp option delete 'moceanapi_abandoned_carts_version_number'
wp option delete 'moceanapi_abandoned_carts_recoverable_cart_count'
wp option delete 'moceanapi_abandoned_carts_transferred_table'
wp option delete 'wclcfc_review_submitted'
wp option delete 'wclcfc_version_number'
wp option delete 'wclcfc_captured_abandoned_cart_count'
wp option delete 'moceanapi_abandoned_carts_captured_abandoned_cart_count'
wp option delete 'wclcfc_times_review_declined'
wp option delete 'moceanapi_abandoned_carts_times_review_declined'
wp option delete 'wclcfc_exit_intent_status'
wp option delete 'wclcfc_exit_intent_test_mode'
wp option delete 'wclcfc_exit_intent_type'
wp option delete 'wclcfc_exit_intent_main_color'
wp option delete 'wclcfc_exit_intent_inverse_color'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'moceanapi_abandoned_carts_ghost_cart_count'
wp option delete 'moceanapi_abandoned_carts_carts_per_page'

# Delete Transients
wp transient delete 'moceanapi_abandoned_carts_recoverable_cart_count'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'moceanapi_abandoned_carts_notification_sendout_hook'
wp cron event delete 'moceanapi_abandoned_carts_sms_auto_sendout_hook'
wp cron event delete 'moceanapi_abandoned_carts_remove_empty_carts_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moceanapi_abandoned_carts_carts_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moceanapi_abandoned_carts_carts_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moceanapi_abandoned_carts_carts_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moceanapi_abandoned_carts_carts_per_page'"
