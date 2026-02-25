#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myadmanager_paypal_add'
wp option delete 'myadmanager_cost_week'
wp option delete 'myadmanager_name_week'
wp option delete 'myadmanager_cost_month'
wp option delete 'myadmanager_name_month'
wp option delete 'myadmanager_paypal_return_page'
wp option delete 'myadmanager_paypal_email_msg'
wp option delete 'myAdManager_db_version'
wp option delete 'myadmanager_week_enable'
wp option delete 'myadmanager_widget_title'
wp option delete 'myAdManager_version'
wp option delete 'myadmanager_paypal_enable'

