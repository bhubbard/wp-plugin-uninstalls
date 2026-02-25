#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vbout_tracking_activated'
wp option delete 'vbout_status'
wp option delete 'vbout_plugin_version'
wp option delete 'vbout_last_nonce'
wp option delete 'vbout_api_business'
wp option delete 'vbout_flash_message'
wp option delete 'vbout_sm_channels'
wp option delete 'vbout_em_lists'
wp option delete 'vbout_em_forms_default'
wp option delete 'vbout_current_tab'
wp option delete 'vbout_tracking_domains'
wp option delete 'vbout_method'
wp option delete 'vbout_userkey'
wp option delete 'vbout_appkey'
wp option delete 'vbout_clientsecret'
wp option delete 'vbout_authtoken'
wp option delete 'vbout_plugin_availability'
wp option delete 'vbout_plugin_attachment'
wp option delete 'vbout_sm_activated'
wp option delete 'vbout_em_activated'
wp option delete 'vbout_tracking_code'
wp option delete 'vbout_em_forms'
wp option delete 'vbout_em_emailname'
wp option delete 'vbout_em_emailsubject'
wp option delete 'vbout_em_fromemail'
wp option delete 'vbout_em_fromname'
wp option delete 'vbout_em_replyto'
wp option delete 'vbout_sync_emaillist'
wp option delete 'vbout_sync_exclude_ids'
wp option delete 'vbout_tracking_domain'
wp option delete 'vbout_sync_exclude_listid'

# Clear Cron Jobs
wp cron event delete 'synchronize_wp_users_hook'

