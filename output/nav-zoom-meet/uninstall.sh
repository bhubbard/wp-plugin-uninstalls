#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nzmpnt_zoom_plan'
wp option delete 'nzmpnt_account_id'
wp option delete 'nzmpnt_client_id'
wp option delete 'nzmpnt_client_secret'
wp option delete 'nzmpnt_zoom_user_email'
wp option delete 'nzmpnt_wstart_time'
wp option delete 'nzmpnt_wend_time'
wp option delete 'nzmpnt_slot_duration'
wp option delete 'nzmpnt_zoom_timezone'
wp option delete 'nzmpnt_plugin_custom_css'

