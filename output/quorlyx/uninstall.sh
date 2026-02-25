#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quorlyx_options'
wp option delete 'quorlyx_activated_before'
wp option delete 'quorlyx_do_activation_redirect'
wp option delete 'quorlyx_ab_stats'
wp option delete 'quorlyx_conversation_stats'
wp option delete 'quorlyx_conversion_goal_stats'
wp option delete 'quorlyx_action_click_stats'
wp option delete 'quorlyx_last_generation'
wp option delete 'woocommerce_permalinks'
wp option delete 'quorlyx_dismissed_notices'
wp option delete 'quorlyx_generated_history'

# Clear Cron Jobs
wp cron event delete 'quorlyx_recalculate_stats_event'
wp cron event delete 'quorlyx_check_finished_conversations'
wp cron event delete 'quorlyx_generate_posts_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_ab_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_ab_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_ab_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_ab_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_message_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_message_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_message_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_message_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_persistent_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_persistent_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_persistent_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_persistent_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_device'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_device'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_device'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_device'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_conversions_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_conversions_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_conversions_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_conversions_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_conversions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_conversions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_conversions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_conversions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quorlyx_analytics_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quorlyx_analytics_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quorlyx_analytics_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quorlyx_analytics_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quorlyx_analytics_time_on_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quorlyx_analytics_time_on_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quorlyx_analytics_time_on_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quorlyx_analytics_time_on_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quorlyx_analytics_conversions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quorlyx_analytics_conversions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quorlyx_analytics_conversions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quorlyx_analytics_conversions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quorlyx_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quorlyx_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quorlyx_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quorlyx_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_chat_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_chat_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_chat_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_chat_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quorlyx_generated_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quorlyx_generated_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quorlyx_generated_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quorlyx_generated_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quorlyx_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quorlyx_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quorlyx_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quorlyx_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quorlyx_generated_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quorlyx_generated_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quorlyx_generated_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quorlyx_generated_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quorlyx_source_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quorlyx_source_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quorlyx_source_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quorlyx_source_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quorlyx_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quorlyx_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quorlyx_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quorlyx_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quorlyx_content_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quorlyx_content_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quorlyx_content_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quorlyx_content_generated'"
