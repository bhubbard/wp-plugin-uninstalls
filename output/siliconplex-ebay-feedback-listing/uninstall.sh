#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_ebay_auth_user_id'
wp option delete 'sp_ebay_auth_token'
wp option delete 'sp_ebay_auth_app_id'
wp option delete 'sp_ebay_auth_cert_id'
wp option delete 'sp_ebay_auth_dev_id'
wp option delete 'sp_ebay_feedbacks_list_title'
wp option delete 'sp_ebay_feedbacks_datetime_format'

