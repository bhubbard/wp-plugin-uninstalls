#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpCap_login'
wp option delete 'wpCap_register'
wp option delete 'wpCap_lost'
wp option delete 'wpCap_comments'
wp option delete 'wpCap_registered'
wp option delete 'wpCap_cf7_ax'
wp option delete 'wpCap_wpf_ax'
wp option delete 'wpCap_forminator_ax'
wp option delete 'wpCap_type'
wp option delete 'wpCap_letters'
wp option delete 'wpCap_no_chars'
wp option delete 'wpCap_image'
wp option delete 'wpCap_failBan'
wp option delete 'wpCap_Banned'
wp option delete 'wpCap_Ban_History'
wp option delete 'wpCap_restMenu'

# Clear Cron Jobs
wp cron event delete 'delete_history_file_event'

