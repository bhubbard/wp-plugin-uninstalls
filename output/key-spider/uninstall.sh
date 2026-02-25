#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keyspider_zhizhu'
wp option delete 'keyspider_liuliang'
wp option delete 'keyspider_zhizhu_jieduan'
wp option delete 'keyspider_tongji'
wp option delete 'keyspider_clear'
wp option delete 'keyspider_wzt_log'
wp option delete 'keyspider_wzt_token3'
wp option delete 'keyspider_wzt_token2'
wp option delete 'keyspider_wzt_token1'
wp option delete 'keyspider_liuliang_diyu_jifen'
wp option delete 'keyspider_liuliang_diyu'
wp option delete 'keyspider_level'
wp option delete 'keyspider_silian'

# Delete Transients
wp transient delete 'keyspider_zhizhu_cache'

# Clear Cron Jobs
wp cron event delete 'keyspider_cronhook'
wp cron event delete 'keyspider_five_minute_task_hook'

