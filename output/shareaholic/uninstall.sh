#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Activated_Plugin_Shareaholic'
wp option delete 'shareaholic_has_accepted_tos'
wp option delete 'shareaholic_settings'
wp option delete 'shareaholic_activate_timestamp'
wp option delete 'shareaholic_review_dismiss'
wp option delete 'SexyBookmarks'
wp option delete 'ShareaholicClassicBookmarks'
wp option delete 'ShareaholicRecommendations'
wp option delete 'ShareaholicTopBar'
wp option delete 'ShareaholicAnalytics'
wp option delete 'ShareaholicTopbar'
wp option delete 'shr_reportupgrade'
wp option delete 'SHRSBvNum'
wp option delete 'SHRSB_apikey'
wp option delete 'SEXY_SPONSORS'
wp option delete 'SHRSB_DefaultSprite'
wp option delete 'SHRSB_CustomSprite'
wp option delete 'SexyCustomSprite'
wp option delete 'SHRSBvNUM'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shareaholic_%'"
wp option delete 'shareaholic_get_or_create_api_key'
wp option delete 'shareaholic_perform_update'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete '_shr_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'shareaholic_remove_transients_hourly'
wp cron event delete 'shareaholic_heartbeat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shareaholic_exclude_recommendations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shareaholic_exclude_recommendations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shareaholic_exclude_recommendations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shareaholic_exclude_recommendations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shareaholic_disable_open_graph_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shareaholic_disable_open_graph_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shareaholic_disable_open_graph_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shareaholic_disable_open_graph_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shareaholic_disable_share_buttons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shareaholic_disable_share_buttons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shareaholic_disable_share_buttons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shareaholic_disable_share_buttons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shareaholic_disable_recommendations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shareaholic_disable_recommendations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shareaholic_disable_recommendations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shareaholic_disable_recommendations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amt_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amt_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amt_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amt_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amt_news_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amt_news_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amt_news_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amt_news_keywords'"
