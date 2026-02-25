#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Activated_Saleassist'
wp option delete 'saleassist_api_key'
wp option delete 'saleassist_secret_key'
wp option delete 'saleassist_client_id'
wp option delete 'saleassist_alert_code'
wp option delete 'saleassist_alert_msg'
wp option delete 'saleassist_page_enable'
wp option delete 'saleassist_post_enable'
wp option delete 'saleassist_data'
wp option delete 'widget_saleassist_widget'
wp option delete 'saleassist_db_version'

