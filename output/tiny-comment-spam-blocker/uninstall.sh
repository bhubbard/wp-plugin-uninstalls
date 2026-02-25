#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tcsb_enable_protection'
wp option delete 'tcsb_enable_logging'
wp option delete 'tcsb_notification_email'
wp option delete 'tcsb_time_threshold'
wp option delete 'tcsb_badwords_list'
wp option delete 'tcsb_enable_japanese_skip'
wp option delete 'tcsb_log_filename'

