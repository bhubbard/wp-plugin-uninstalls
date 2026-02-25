#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'servv_currency'
wp option delete 'servv_pw_title'
wp option delete 'servv_pw_description'
wp option delete 'servv_pw_avatar'
wp option delete 'servv_shop_cards_settings'
wp option delete 'servv_n8n_event_created_active'
wp option delete 'servv_n8n_event_created_url'
wp option delete 'servv_n8n_event_created_method'
wp option delete 'servv_n8n_event_created_secret'
wp option delete 'servv_n8n_new_booking_active'
wp option delete 'servv_n8n_new_booking_url'
wp option delete 'servv_n8n_new_booking_method'
wp option delete 'servv_n8n_new_booking_secret'
wp option delete 'servv_n8n_canceled_booking_active'
wp option delete 'servv_n8n_canceled_booking_url'
wp option delete 'servv_n8n_canceled_booking_method'
wp option delete 'servv_n8n_canceled_booking_secret'
wp option delete 'servv_stripe_account_id'
wp option delete 'servv_stripe_public_key'
wp option delete 'servv_plugin_secret_key'
wp option delete 'servv_plugin_uuid'
wp option delete 'servv_n8n_cancelled_booking_active'
wp option delete 'servv_n8n_cancelled_booking_url'
wp option delete 'servv_n8n_cancelled_booking_method'
wp option delete 'servv_n8n_cancelled_booking_secret'
wp option delete 'servv_install_status'
wp option delete 'servv_plugin_settings'

# Clear Cron Jobs
wp cron event delete 'servv_plugin_delayed_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'servv_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'servv_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'servv_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'servv_event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'servv_event_quantities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'servv_event_quantities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'servv_event_quantities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'servv_event_quantities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'servv_event_location_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'servv_event_location_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'servv_event_location_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'servv_event_location_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'servv_event_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'servv_event_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'servv_event_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'servv_event_type'"
