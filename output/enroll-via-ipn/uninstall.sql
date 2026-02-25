-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EVI_Customer_List_Form_ID', 'EVI_Customer_List_Autoresponder_ID', 'EVI_Track_Sales', 'wpr_address', 'EVI_Paypal_Seller_email', 'EVI_Notification_email', 'EVI_Notify_On_Valid_IPN');

