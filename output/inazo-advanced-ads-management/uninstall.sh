#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'inazo_adv_ads_management_db_version'
wp option delete 'widget_inazo_adv_ads_manager'

