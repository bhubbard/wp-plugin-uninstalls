#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPGAlerts_Max_Alerts'
wp option delete 'WPGAlerts_Strip_Tags'
wp option delete 'WPGAlerts_Content_Post'
wp option delete 'WPGAlerts_Content_Pre'
wp option delete 'WPGAlerts_Author_Post'
wp option delete 'WPGAlerts_Author_Pre'
wp option delete 'WPGAlerts_Title_Post'
wp option delete 'WPGAlerts_Title_Pre'
wp option delete 'WPGAlerts_db_version'

