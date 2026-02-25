#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_api_key'
wp option delete 'seo_links_impressions'
wp option delete 'seo_links_clicks'
wp option delete 'seo_links_multilang'
wp option delete 'seoli_custom_links'
wp option delete 'seoli_openai_api_key'
wp option delete 'seoli_activation_date'
wp option delete 'seo_links_last_update'
wp option delete 'seoli_cron_secret_token'
wp option delete 'seoli_bulk_enabled'
wp option delete 'seoli_bulk_delay'
wp option delete 'seoli_bulk_max_links'
wp option delete 'seoli_bulk_queue'
wp option delete 'seoli_debug_logs'
wp option delete 'seoli_bulk_activity_logs'
wp option delete 'seoli_do_activation_redirect'
wp option delete 'wp_seo_plugins_user_display_name'
wp option delete 'wp_seo_plugins_user_email'

# Clear Cron Jobs
wp cron event delete 'seoli_process_bulk_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_links_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_links_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_links_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_links_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_links_keywords_filtered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_links_keywords_filtered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_links_keywords_filtered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_links_keywords_filtered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'internal_links_keywords_filtered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'internal_links_keywords_filtered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'internal_links_keywords_filtered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'internal_links_keywords_filtered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_links_keywords_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_links_keywords_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_links_keywords_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_links_keywords_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_links_keywords_impressions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_links_keywords_impressions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_links_keywords_impressions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_links_keywords_impressions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'most_relevant_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'most_relevant_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'most_relevant_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'most_relevant_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_links_all_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_links_all_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_links_all_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_links_all_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seoli_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seoli_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seoli_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seoli_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seoli_review_remind_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seoli_review_remind_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seoli_review_remind_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seoli_review_remind_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seoli_usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seoli_usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seoli_usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seoli_usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seoli_review_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seoli_review_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seoli_review_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seoli_review_date'"
