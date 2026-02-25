#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tag_manage_key'
wp option delete 'tagmanage_wzt_token1'
wp option delete 'tagmanage_wzt_token2'
wp option delete 'tagmanage_wzt_token3'
wp option delete 'tagmanage_tongchang'
wp option delete 'tagmanage_tongji'
wp option delete 'tagmanage_clear'
wp option delete 'tagmanage_level'
wp option delete 'tagmanage_tag'
wp option delete 'Tag_manage_key'
wp option delete 'tagmanage_zz'
wp option delete 'Tag_manage_link'
wp option delete 'tagmanage_auth_fail_count'
wp option delete 'tagmanage_auth_last_fail_time'

# Clear Cron Jobs
wp cron event delete 'tagmanage_cronhook'
wp cron event delete 'tagmanage_cronhook1'
wp cron event delete 'tagmanage_five_minute_task_hook'

