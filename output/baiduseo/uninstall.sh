#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'baiduseo_zhizhu'
wp option delete 'baiduseo_wyc'
wp option delete 'baiduseo_zz'
wp option delete 'baiduseo_bd_chao'
wp option delete 'seo_baidu_sitemap'
wp option delete 'baiduseo_indexnow_record'
wp option delete 'baiduseo_google_record'
wp option delete 'baiduseo_liuliang'
wp option delete 'baiduseo_linkhh'
wp option delete 'baiduseo_friends_kg_num'
wp option delete 'baiduseo_hh_count'
wp option delete 'baiduseo_sm_record'
wp option delete 'baiduseo_auto'
wp option delete 'baiduseo_kp_tongbu'
wp option delete 'baiduseo_wzt_log'
wp option delete 'baiduseo_wzt_token1'
wp option delete 'baiduseo_wzt_token2'
wp option delete 'baiduseo_wzt_token3'
wp option delete 'baiduseo_tongchang'
wp option delete 'baiduseo_zhizhu_jieduan'
wp option delete 'baiduseo_bing_record'
wp option delete 'baiduseo_day_record'
wp option delete 'baiduseo_zz_record'
wp option delete 'BaiduSEO_tongji'
wp option delete 'baiduseo_clear'
wp option delete 'baiduseo_liuliang_diyu_jifen'
wp option delete 'baiduseo_liuliang_diyu'
wp option delete 'baiduseo_beian'
wp option delete 'baiduseo_pingfen'
wp option delete 'baiduseo_level'
wp option delete 'baiduseo_tag'
wp option delete 'baiduseo_rank'
wp option delete 'baiduseo_quanzhong'
wp option delete 'baiduseo_youhua'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'baiduseo_cate_%'"
wp option delete 'seo_init'
wp option delete 'seo_301_404_url'
wp option delete 'seo_alt_auto'
wp option delete 'seo_robots_sc'
wp option delete 'seo_baidu_silian'
wp option delete 'baiduseo_wzjc'
wp option delete 'baiduseo_wzjc_count'
wp option delete 'baiduseo_wzjc_num'
wp option delete 'baiduseo_yindao'
wp option delete 'baiduseo_jifen'
wp option delete 'baiduseo_sitemap_num'
wp option delete 'baiduseo_tongxun'

# Delete Transients
wp transient delete 'baiduseo_zhizhu_cache'

# Clear Cron Jobs
wp cron event delete 'baiduseo_cronhook'
wp cron event delete 'baiduseo_cronhook1'
wp cron event delete 'baiduseo_my_minute_task_hook'
wp cron event delete 'baiduseo_five_minute_task_hook'
wp cron event delete 'baiduseo_art_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'baiduseo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'baiduseo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'baiduseo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'baiduseo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'baiduseo_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'baiduseo_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'baiduseo_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'baiduseo_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
