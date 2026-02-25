#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'momo_acgwc_insights_settings'
wp option delete 'momo_acgwc_chatbot_settings'
wp option delete 'momo_acg_cb_trainings_list'
wp option delete 'momo_acgwc_cb_trainings_settings'
wp option delete 'momo_acgwc_cb_dashboard_contents'
wp option delete 'momo_acg_wc_edit_product_settings'
wp option delete 'momo_acg_wc_openai_settings'
wp option delete 'momowc_rssfeed_openai_settings'
wp option delete 'momowc_autoblog_openai_settings'
wp option delete 'momo_acg_rssfeed_event_list'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'momo_wsw_api_cache_settings'
wp option delete 'momo_acg_wc_insights_settings'
wp option delete 'momo_acg_wc_related_settings'
wp option delete 'momo_acg_wc_searchlog_settings'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'momo_revenue_insights'
wp transient delete 'momo_revenue_insights_monthly'
wp transient delete 'momo_revenue_insights_weekly'
wp transient delete 'momo_revenue_insights_yearly'
wp transient delete 'momo_order_insights'
wp transient delete 'momo_average_order_insights'
wp transient delete 'momo_weekly_sales_insights'
wp transient delete 'momo_monthly_sales_insights'
wp transient delete 'momo_overall_insights'
wp transient delete 'momo_overall_insights_monthly'
wp transient delete 'momo_overall_insights_weekly'
wp transient delete 'momo_overall_insights_yearly'

# Clear Cron Jobs
wp cron event delete 'momo_acg_trainings_embeddings_hook'
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'momoacgwc_delete_old_viewed_products_event'
wp cron event delete 'momoacgwc_delete_old_removed_cart_products_event'
wp cron event delete 'momo_store_email_template_event'
wp cron event delete 'momo_delete_old_search_logs_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'workflow_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'workflow_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'workflow_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'workflow_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reply_to_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reply_to_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reply_to_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reply_to_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reply_to_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reply_to_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reply_to_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reply_to_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'preheader'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'preheader'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'preheader'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'preheader'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reply_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reply_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reply_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reply_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reply_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reply_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reply_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reply_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momo_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momo_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momo_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momo_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momo_view_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momo_view_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momo_view_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momo_view_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
