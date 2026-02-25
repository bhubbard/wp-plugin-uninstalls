#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fct_custom_version'
wp option delete 'feng_custom_version'
wp option delete 'fct_xianshi_tianshu'
wp option delete 'fct_kaitong_shijian'
wp option delete 'fct_kaitong_bangding'
wp option delete 'fct_kaitong_neirong'
wp option delete 'fct_shurukuang'
wp option delete 'fct_denglong'
wp option delete 'fct_denglong_zi_1'
wp option delete 'fct_denglong_zi_2'
wp option delete 'fct_denglong_kaishi'
wp option delete 'fct_denglong_jieshu'
wp option delete 'fct_huise'
wp option delete 'fct_huise_kaishi'
wp option delete 'fct_huise_jieshu'
wp option delete 'fct_dengxiang'
wp option delete 'fct_dengxiang_bangding'
wp option delete 'fct_lianjie'
wp option delete 'fct_lianjie_weiba'
wp option delete 'fct_festivals'
wp option delete 'fct_festivals_option'
wp option delete 'fct_xuehua'
wp option delete 'fct_xuehua_option'
wp option delete 'fct_links'
wp option delete 'fct_links_option'
wp option delete 'feng_custom_switch'
wp option delete 'feng_custom_option'
wp option delete 'feng_custom_festivals'
wp option delete 'feng_customfct_snowflake'
wp option delete 'feng_custom_links'

# Clear Cron Jobs
wp cron event delete 'fct_links_rss_cron_hook'

