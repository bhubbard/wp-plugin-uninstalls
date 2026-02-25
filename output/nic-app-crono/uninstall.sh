#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_DataCenter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clientId'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clientSecret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_masterCalendar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_masterAccessToken'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_masterRefreshToken'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_AuthorizationPageId'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_CreateAuthPage'"
wp option delete 'nicappcrono_CreateAuthPage'
wp option delete 'nicappcrono_clientId'

# Clear Cron Jobs
wp cron event delete 'nicappcronoCronJob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_calendarID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_calendarID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_calendarID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_calendarID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_calendarName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_calendarName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_calendarName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_calendarName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_AccessToken'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_AccessToken'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_AccessToken'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_AccessToken'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_RefreshToken'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_RefreshToken'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_RefreshToken'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_RefreshToken'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ProfileName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ProfileName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ProfileName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ProfileName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ProfileID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ProfileID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ProfileID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ProfileID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ProviderID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ProviderID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ProviderID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ProviderID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Product_Display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Product_Display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Product_Display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Product_Display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Product_Id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Product_Id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Product_Id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Product_Id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_TwoWay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_TwoWay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_TwoWay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_TwoWay'"
