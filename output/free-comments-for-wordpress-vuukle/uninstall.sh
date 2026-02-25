#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_vuukle_admin_notice'
wp option delete 'Activated_Vuukle_Plugin_Date'
wp option delete 'Activated_Vuukle_Plugin'
wp option delete 'Vuukle'
wp option delete 'Vuukle_App_Id'

