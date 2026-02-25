#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EVI_Customer_List_Form_ID'
wp option delete 'EVI_Customer_List_Autoresponder_ID'
wp option delete 'EVI_Track_Sales'
wp option delete 'wpr_address'
wp option delete 'EVI_Paypal_Seller_email'
wp option delete 'EVI_Notification_email'
wp option delete 'EVI_Notify_On_Valid_IPN'

