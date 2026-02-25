#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tracking_ready_text'
wp option delete 'mail_send_general'
wp option delete 'sms_provider'
wp option delete 'sms_send_general'
wp option delete 'BsmsApp_UserName'
wp option delete 'BsmsApp_Password'
wp option delete 'BsmsApp_Header'
wp option delete 'BsmsApp_sms_url_send'
wp option delete 'BsmsApp_footer'
wp option delete 'BsmsApp_sender'
wp option delete 'BsmsApp_type'
wp option delete 'Bsmsapp_sim'
wp option delete 'Bsmsapp_mode'
wp option delete 'Bsmsapp_device'
wp option delete 'Bsmsapp_deviceid'
wp option delete 'Bsmsapp_waid'
wp option delete 'BsmsApp_m1'
wp option delete 'BsmsApp_m2'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_code'"
