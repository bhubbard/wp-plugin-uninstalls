#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zhanzhangb_baidu_token'
wp option delete 'zhanzhangb_baidu_realtime_token'
wp option delete 'zhanzhangb_baidu_check'
wp option delete 'zhanzhangb_baidu_custom_post_types'
wp option delete 'zhanzhangb_baidu_set_time'
wp option delete 'zhanzhangb_baidu_submit_number'
wp option delete 'zhanzhangb_baidu_submissions'
wp option delete 'zhanzhangb_baidu_realtime_number'
wp option delete 'zhanzhangb_baidu_realtime_date'
wp option delete 'zhanzhangb_baidu_push'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
