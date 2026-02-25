#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_magicpost_baidu_api_token'
wp option delete 'cht_option'
wp option delete 'dlip_option'
wp option delete 'wb_magicpost_ver'
wp option delete 'wb_magicpost_promote'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_magicpost_cnf_%'"
wp option delete 'magicpost_move'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ver'"
wp option delete 'magicpost_schedule'
wp option delete 'dwqr_option'
wp option delete 'magicpost_translate_error'
wp option delete 'magicpost_translate'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'magicpost_move_query'
wp transient delete 'magicpost_move_tag_post_query'

# Clear Cron Jobs
wp cron event delete 'magic_post_schedule_post'
wp cron event delete 'magic_post_translate_post'
wp cron event delete 'translate_single_post'
wp cron event delete 'magic_post_baidu_translate_get_doc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbmpbdfydocid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbmpbdfydocid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbmpbdfydocid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbmpbdfydocid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_downs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_downs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_downs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_downs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vk_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vk_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vk_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vk_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_dl_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_dl_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_dl_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_dl_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_dl_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_dl_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_dl_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_dl_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dwqr_like'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dwqr_like'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dwqr_like'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dwqr_like'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'm-p-t-s'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'm-p-t-s'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'm-p-t-s'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'm-p-t-s'"
