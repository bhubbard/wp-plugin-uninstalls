#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbi_plugin_do_activation_redirect'
wp option delete 'cff_plugin_do_activation_redirect'
wp option delete 'trustpulse_api_plugin_do_activation_redirect'
wp option delete 'simpay_customer_journey_start'
wp option delete 'duplicator_redirect_to_welcome'
wp option delete 'userfeedback_license'
wp option delete 'userfeedback_parsed_addons'
wp option delete 'wpforms_activation_redirect'
wp option delete 'aioseo_activation_redirect'
wp option delete 'userfeedback_onboarding_complete'
wp option delete 'userfeedback_notices'
wp option delete 'userfeedback_over_time'
wp option delete 'userfeedback_review'
wp option delete 'userfeedback_tracking_data'
wp option delete 'userfeedback_usage_tracking_config'
wp option delete 'userfeedback_debug_usage_tracking'
wp option delete 'userfeedback_usage_tracking_last_checkin'
wp option delete 'uncannyautomator_source'
wp option delete 'automator_reporting'
wp option delete 'userfeedback_current_version'
wp option delete 'userfeedback_db_version'
wp option delete 'userfeedback_version_upgraded_from'
wp option delete 'userfeedback_license_updates'
wp option delete 'userfeedback_network_license_updates'
wp option delete 'userfeedback_network_license'
wp option delete 'userfeedback_shareasale_id'
wp option delete 'userfeedback_admin_menu_tooltip'
wp option delete 'userfeedback_connect'
wp option delete 'userfeedback_connect_token'
wp option delete 'userfeedback_timestamp_fixed'

# Delete Transients
wp transient delete '_userfeedback_addons'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete '_exactmetrics_activation_redirect'
wp transient delete 'wp_mail_smtp_activation_redirect'
wp transient delete '_rafflepress_welcome_screen_activation_redirect'
wp transient delete '_seedprod_welcome_screen_activation_redirect'
wp transient delete 'searchwp_live_search_activation_redirect'
wp transient delete 'simpay_activation_redirect'
wp transient delete 'charitable_install'
wp transient delete 'pushengage_activation_redirect'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete '_userfeedback_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'userfeedback_admin_notifications_update'
wp cron event delete 'userfeedback_usage_tracking_cron'
wp cron event delete 'userfeedback_email_summaries_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userfeedback-dismiss-settings-blurb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userfeedback-dismiss-settings-blurb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userfeedback-dismiss-settings-blurb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userfeedback-dismiss-settings-blurb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uf_disable_surveys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uf_disable_surveys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uf_disable_surveys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uf_disable_surveys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uf_show_specific_survey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uf_show_specific_survey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uf_show_specific_survey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uf_show_specific_survey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%ai-summary-upsell'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%ai-summary-upsell'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%ai-summary-upsell'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ai-summary-upsell'"
