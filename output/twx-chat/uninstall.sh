#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twx_chat_options'
wp option delete 'twx_chat_site_crawler_running'
wp option delete 'twx_chat_server_token'
wp option delete 'twx_chat_client_timezone'
wp option delete 'twx_chat_db_timezone'
wp option delete 'auto_update_plugins'
wp option delete 'twx_chat_customer_plan'
wp option delete 'twx_chat_pending_language_files'
wp option delete 'twx_chat_plugin_ver'
wp option delete 'twx_chat_plugin_plan'
wp option delete 'twx_chat_customer_valid'
wp option delete 'twx_chat_customer_valid_message'

# Clear Cron Jobs
wp cron event delete 'twx_chat_cleanup_chatlog_event'
wp cron event delete 'twx_chat_site_crawler_daily_event'
wp cron event delete 'twx_chat_site_crawler_weekly_event'
wp cron event delete 'twx_chat_reports_chatlog_summary_email_daily_event'
wp cron event delete 'twx_chat_reports_chatlog_summary_email_weekly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
