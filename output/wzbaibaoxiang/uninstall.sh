#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'websitebox_tables_back_plan'
wp option delete 'websitebox_tables_back_plan_time'
wp option delete 'websitebox_base'
wp option delete 'websitebox_sanheyi'
wp option delete 'websitebox_kefu'
wp option delete 'websitebox_shoujikefu'
wp option delete 'websitebox_liuyan'
wp option delete 'websitebox_sitebg'
wp option delete 'websitebox_alert'
wp option delete 'websitebox_scroll'
wp option delete 'websitebox_guanggao'
wp option delete 'websitebox_picload'
wp option delete 'websitebox_shubiaotexiao'
wp option delete 'websitebox_youhua'
wp option delete 'websitebox_tongji'
wp option delete 'websitebox_is_mianze'
wp option delete 'websitebox_shuiyin'
wp option delete 'websitebox_log'
wp option delete 'websitebox_level'

# Clear Cron Jobs
wp cron event delete 'websitebox_cronhook1'
wp cron event delete 'websitebox_cronhook'

