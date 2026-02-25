#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brildir_expopo_author_id'
wp option delete 'brildir_expopo_sync_option'
wp option delete 'brildir_expopo_min_time_published'
wp option delete 'brildir_expopo_cron_schedule'
wp option delete 'brildir_expopo_wp_post_status'
wp option delete 'brildir_expopo_post_redirect'
wp option delete 'brildir_expopo_pass_publish_date'
wp option delete 'brildir_expopo_pass_feature_image'
wp option delete 'brildir_expopo_pass_post_tags'
wp option delete 'brildir_expopo_pass_seo_meta_data'
wp option delete 'brildir_expopo_pass_slug'
wp option delete 'brildir_expopo_pass_post_category'
wp option delete 'brildir_expopo_selected_categories'
wp option delete 'brildir_expopo_api_key'
wp option delete 'brildir_expopo_api_url'
wp option delete 'brildir_expopo_post_type'
wp option delete 'brildir_expopo_bd_post_status'
wp option delete 'brildir_expopo_cron_offset'
wp option delete 'brildir_expopo_last_sync_time'

# Clear Cron Jobs
wp cron event delete 'brildir_expopo_cron_scheduled'
wp cron event delete 'brildir_expopo_single_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brildir_expopo_post_new_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brildir_expopo_post_new_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brildir_expopo_post_new_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brildir_expopo_post_new_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brildir_expopo_redirect_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brildir_expopo_redirect_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brildir_expopo_redirect_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brildir_expopo_redirect_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brildir_expopo_created_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brildir_expopo_created_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brildir_expopo_created_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brildir_expopo_created_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brildir_expopo_post_update_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brildir_expopo_post_update_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brildir_expopo_post_update_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brildir_expopo_post_update_date'"
