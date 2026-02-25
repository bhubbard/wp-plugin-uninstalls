#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wr_general_enabled'
wp option delete 'wr_general_debug'
wp option delete 'wr_general_apipath'
wp option delete 'wr_general_site_token'
wp option delete 'wr_general_consumer_key'
wp option delete 'wr_general_consumer_secret'
wp option delete 'wr_general_enable_gdpr_marketing'
wp option delete 'wr_general_ticket'
wp option delete 'wr_general_abandoned_cart_expiry'
wp option delete 'wr_general_import_run'
wp option delete 'wr_plugin_wordpress_generate_sitemap'
wp option delete 'wr_plugin_wordpress_rabbit_id'
wp option delete 'wr_plugin_wordpress_site_id'
wp option delete 'wr_plugin_wordpress_wr_token'
wp option delete 'wr_plugin_wordpress_script_url'
wp option delete 'wr_plugin_wordpress_script_token'
wp option delete 'wr_whiterabbit_wp_token'
wp option delete 'wr_plugin_wordpress_message_log'
wp option delete 'wr_plugin_wordpress_analytics_piwik_enabled'
wp option delete 'wr_plugin_wordpress_analytics_piwik_debug_enabled'
wp option delete 'wr_plugin_wordpress_analytics_piwik_code'
wp option delete 'wr_plugin_wordpress_analytics_piwik_api_code'
wp option delete 'wr_plugin_wordpress_analytics_ecommerce_goal_id'
wp option delete 'wr_whiterabbit_analytics_newsletter_goal_id'
wp option delete 'wr_post_default_author_id'
wp option delete 'wr_post_default_category_id'
wp option delete 'wr_theme_settings'
wp option delete 'wr_plugin_wordpress_data_import_run'
wp option delete 'wr_plugin_wordpress_suite_operation_token'
wp option delete 'wr_plugin_wordpress_data_import'
wp option delete 'wr_plugin_wordpress_suite_gdpr_list'
wp option delete 'wr_whiterabbit_piwik_url'
wp option delete 'wr_plugin_log_enabled'
wp option delete 'wr_commonpages'
wp option delete 'Activated_Plugin'

# Clear Cron Jobs
wp cron event delete 'wr_execute_cron'
wp cron event delete 'wr_remove_abandoned_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wr_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wr_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wr_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wr_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sseo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sseo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sseo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sseo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sseo_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sseo_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sseo_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sseo_meta_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
