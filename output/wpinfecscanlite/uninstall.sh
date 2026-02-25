#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpinfectlitescanner_thedbversion'
wp option delete 'wpinfectlitescanner_cron_autoscan_info'
wp option delete 'wpinfectlitescanner_cron_starttime_info'
wp option delete 'wpinfectlitescanner_cron_lastemailsend_info'
wp option delete 'wpinfectlitescanner_cron_mailsend_info'
wp option delete 'wpinfectlitescanner_cron_mailaddr_info'
wp option delete 'wpinfectlitescanner_userwhitelist'
wp option delete 'wpinfectlitescan_nfblock_version'
wp option delete 'wpinfectlitescanner_hackmonitor_logcount'
wp option delete 'wpinfectlitescanner_hackmonitor'
wp option delete 'wpinfectlitescanner_valnchecktime'
wp option delete 'wpinfectlitescanner_valncheck'
wp option delete 'wpinfectlitescanner_hidealert_info'
wp option delete 'wpinfectlitescanner_blockips'

# Clear Cron Jobs
wp cron event delete 'wpinfectlitescannercronjob'

