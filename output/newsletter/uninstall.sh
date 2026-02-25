#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsletter_show_welcome'
wp option delete 'newsletter_addons_updated'
wp option delete 'newsletter_addons'
wp option delete 'newsletter_news_updated'
wp option delete 'newsletter_news'
wp option delete 'newsletter_news_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_%'"
wp option delete 'newsletter_diagnostic_send_calls'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_run'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_import_last'"
wp option delete 'newsletter_main'
wp option delete 'newsletter_profile'
wp option delete 'newsletter_emails'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_emails_%'"
wp option delete 'newsletter_dismissed'
wp option delete 'newsletter_public_page_check'
wp option delete 'newsletter_install_time'
wp option delete 'wp_crontrol_paused'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log_level'"
wp option delete 'newsletter_diagnostic_cron_calls'
wp option delete 'newsletter_log_level'
wp option delete 'newsletter_logger_secret'
wp option delete 'newsletter_version'
wp option delete 'newsletter_main_version'
wp option delete 'newsletter_system_warnings'
wp option delete 'newsletter_promotion'
wp option delete 'newsletter_main_status'
wp option delete 'newsletter_statistics_available_version'
wp option delete 'newsletter_statistics_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_backup_%'"
wp option delete 'newsletter_statistics'
wp option delete 'newsletter_subscription'
wp option delete 'newsletter_htmlforms'
wp option delete 'newsletter_antispam'
wp option delete 'newsletter_form'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_form_%'"
wp option delete 'newsletter_customfields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_profile_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_customfields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_profile_main_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_%'"
wp option delete 'newsletter_info'
wp option delete 'newsletter_lists'
wp option delete 'newsletter_subscription_lists'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_lists_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_lists_%'"
wp option delete 'newsletter_template'
wp option delete 'newsletter_subscription_template'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_template_%'"
wp option delete 'newsletter_system_status'
wp option delete 'newsletter'
wp option delete 'newsletter_profile_main'
wp option delete 'newsletter_main_info'
wp option delete 'newsletter_subscription_antibot'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_system_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_main_info_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_antibot_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_customfields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_form_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_info_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_system_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_users_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_main_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_statistics_%'"
wp option delete 'newsletter_main_smtp'
wp option delete 'newsletter_subscription_version'
wp option delete 'newsletter_subscription_first_install_time'
wp option delete 'newsletter_unsubscription_version'
wp option delete 'newsletter_unsubscription_first_install_time'
wp option delete 'newsletter_users_version'
wp option delete 'newsletter_users_first_install_time'
wp option delete 'newsletter_profile_version'
wp option delete 'newsletter_profile_first_install_time'
wp option delete 'newsletter_emails_version'
wp option delete 'newsletter_emails_first_install_time'
wp option delete 'newsletter_system_version'
wp option delete 'newsletter_system_first_install_time'
wp option delete 'newsletter_main_first_install_time'
wp option delete 'newsletter_statistics_version'
wp option delete 'newsletter_statistics_first_install_time'
wp option delete 'newsletter_wp'
wp option delete 'newsletter_main_steps'
wp option delete 'newsletter_lock_engine'
wp option delete 'newsletter_stats_email_column_upgraded'

# Delete Transients
wp transient delete 'newsletter_topbar'
wp transient delete 'newsletter_license_data'
wp transient delete 'newsletter_user_count'
wp transient delete 'tnp_extensions_json'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_email' OR option_name LIKE '_site_transient_%_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_newsletter_subscription_%' OR option_name LIKE '_site_transient_newsletter_subscription_%'"
wp transient delete 'doing_cron'
wp transient delete 'newsletter_transient_test'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'newsletter'
wp cron event delete 'newsletter_clean'
wp cron event delete 'newsletter_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
