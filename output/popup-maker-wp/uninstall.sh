#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgpm_popup_maker_api_option'
wp option delete 'sgpm_popup_maker_dismiss_review_notice'
wp option delete 'sgpm_popup_maker_activation_date'
wp option delete 'sgpm_popup_maker_notification_engine_source'
wp option delete 'sgpm_popup_maker_dismissed_notifacions'
wp option delete 'sgpm_popup_maker_user_roles'
wp option delete 'sgpm_popup_maker_custom_allowed_tags'
wp option delete 'sgpm_popup_maker_custom_allowed_attrs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%'"
wp option delete 'wisdom_last_track_time'
wp option delete 'wisdom_collect_email'
wp option delete 'wisdom_admin_emails'

# Clear Cron Jobs
wp cron event delete 'sgpm_fetch_new_notifications'
wp cron event delete 'sgpm_fetch_notifications'
wp cron event delete 'put_do_weekly_action'

