#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SULly_System_Settings'
wp option delete 'SULly_Removed'
wp option delete 'EntriesToDisplay'
wp option delete 'PageEntriesToDisplay'
wp option delete 'SULly_DBVersion'
wp option delete 'SULly_Entries_To_Display'
wp option delete 'SULly_Page_Entries_To_Display'
wp option delete 'SULly_Disable_WP_Email_Notifications'
wp option delete 'SULly_Send_Email_Notifications'

