#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'salespopup_mobile_support'
wp option delete 'salespopup_start_time'
wp option delete 'salespopup_showing_time'
wp option delete 'salespopup_gap_time'
wp option delete 'salespopup_admin_support'
wp option delete 'salespopup_frequent_count'
wp option delete 'salespopup_change_user_name'
wp option delete 'salespopup_freeze_notification'
wp option delete 'salespopup_front_end_support'
wp option delete 'salespopup_csv_data'
wp option delete 'salespopup_notification_bg_color'
wp option delete 'salespopup_upload_status'

