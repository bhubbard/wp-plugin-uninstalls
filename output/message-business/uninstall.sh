#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MESSAGE_BUSINESS_ACCOUNTID'
wp option delete 'MESSAGE_BUSINESS_APIKEY'
wp option delete 'MESSAGE_BUSINESS_FORMBUILDEROPTIONS'
wp option delete 'MESSAGE_BUSINESS_INPUTSUBMITBUTTONTEXT'
wp option delete 'MESSAGE_BUSINESS_HIDEFORMAFTERSUBMIT'
wp option delete 'MESSAGE_BUSINESS_WIDGETFORMHTML'
wp option delete 'MESSAGE_BUSINESS_SHOP_URL'
wp option delete 'MESSSAGE_BUSINESS_CONSUMER_KEY'
wp option delete 'MESSAGE_BUSINESS_CONSUMER_SECRET'
wp option delete 'MESSAGE_BUSINESS_LAST_PAGE_CUSTOMERS'
wp option delete 'MESSAGE_BUSINESS_START_DATE_LAST_IMPORT_CUSTOMERS'
wp option delete 'MESSAGE_BUSINESS_END_DATE_LAST_IMPORT_CUSTOMERS'
wp option delete 'MESSAGE_BUSINESS_IMPORT_CUSTOMERS_FREQUENCY'
wp option delete 'MESSAGE_BUSINESS_CONSUMER_KEY'

# Clear Cron Jobs
wp cron event delete 'message_business_import_contacts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_updated_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_updated_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_updated_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_updated_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
