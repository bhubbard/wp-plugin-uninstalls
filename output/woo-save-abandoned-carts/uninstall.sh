#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cartbounty_main_settings'
wp option delete 'cartbounty_exit_intent_settings'
wp option delete 'cartbounty_submitted_warnings'
wp option delete 'cartbounty_misc_settings'
wp option delete 'cartbounty_automation_steps'
wp option delete 'cartbounty_submitted_notices'
wp option delete 'cartbounty_automation_settings'
wp option delete 'cartbounty_automation_sent_emails'
wp option delete 'cartbounty_automation_sends'
wp option delete 'cartbounty_notification_frequency'
wp option delete 'cartbounty_review_submitted'
wp option delete 'cartbounty_notification_email'
wp option delete 'cartbounty_lift_email'
wp option delete 'cartbounty_hide_images'
wp option delete 'cartbounty_exclude_anonymous_carts'
wp option delete 'cartbounty_exclude_recovered'
wp option delete 'cartbounty_exit_intent_status'
wp option delete 'cartbounty_exit_intent_type'
wp option delete 'cartbounty_exit_intent_heading'
wp option delete 'cartbounty_exit_intent_content'
wp option delete 'cartbounty_exit_intent_image'
wp option delete 'cartbounty_exit_intent_test_mode'
wp option delete 'cartbounty_exit_intent_main_color'
wp option delete 'cartbounty_exit_intent_inverse_color'
wp option delete 'cartbounty_active_quick_stats'
wp option delete 'cartbounty_active_charts'
wp option delete 'cartbounty_chart_type'
wp option delete 'cartbounty_top_product_count'
wp option delete 'cartbounty_report_settings'
wp option delete 'cartbounty_automation_from_name'
wp option delete 'cartbounty_automation_from_email'
wp option delete 'cartbounty_automation_reply_email'
wp option delete 'cartbounty_cron_warning'
wp option delete 'cartbounty_version_number'
wp option delete 'cartbounty_recoverable_cart_count'
wp option delete 'cartbounty_anonymous_cart_count'
wp option delete 'cartbounty_recovered_cart_count'
wp option delete 'cartbounty_last_time_bubble_displayed'
wp option delete 'cartbounty_last_time_bubble_steps_displayed'
wp option delete 'cartbounty_times_review_declined'
wp option delete 'cartbounty_email_table_exists'
wp option delete 'cartbounty_converted_minutes_to_miliseconds'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'cartbounty_notification_sendout_hook'
wp cron event delete 'cartbounty_sync_hook'
wp cron event delete 'cartbounty_remove_empty_carts_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cartbounty_carts_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cartbounty_carts_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cartbounty_carts_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cartbounty_carts_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cartbounty_unsupported_plugin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cartbounty_unsupported_plugin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cartbounty_unsupported_plugin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cartbounty_unsupported_plugin_notice'"
