#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplybook_rest_api_notice_dismissed'
wp option delete 'simplybook_onboarding_completed'
wp option delete 'simplybook_completed_step'
wp option delete 'simplybook_complete_onboarding_notice_dismissed_time'
wp option delete 'simplybook_complete_onboarding_notice_choice'
wp option delete 'simplybook_activation_unix_timestamp'
wp option delete 'simplybook_review_notice_dismissed_time'
wp option delete 'simplybook_review_notice_choice'
wp option delete 'simplybook_company_registration_start_time'
wp option delete 'simplybook_persistent_cache'
wp option delete 'simplybook_options'
wp option delete '_simplybook_current_version'
wp option delete 'simplybook_registration_failed'
wp option delete 'simplybook_company_data'
wp option delete 'simplybook_temporary_onboarding_data'
wp option delete 'simplybook_calendar_published_notification_completed'
wp option delete 'simplybook_calendar_published_task_completed'
wp option delete 'simplybook_token_error'
wp option delete 'simplybook_refresh_company_token_expiration'
wp option delete 'simplybook_company_login'
wp option delete 'simplybook_api_status'
wp option delete 'simplybook_cached_theme_list'
wp option delete 'simplybook_cached_timeline_list'
wp option delete 'simplybookMePl_widget_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tour_started'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tour_shown_once'"
wp option delete 'simplybook_callback_url_expires'
wp option delete 'simplybook_callback_url'
wp option delete 'simplybook_activation_flag'
wp option delete 'simplybook_token_refresh'
wp option delete 'simplybook_refresh_token_expiration'
wp option delete 'simplybook_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simplybookMePl_%'"
wp option delete 'simplybook_activation_source_page'

# Delete Transients
wp transient delete 'simplybook_login_url_request_count'
wp transient delete 'simplybook_login_url_first_request_time'
wp transient delete 'simply_book_attempt_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_redirect_to_settings' OR option_name LIKE '_site_transient_%_redirect_to_settings'"

# Clear Cron Jobs
wp cron event delete 'simplybook_daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
