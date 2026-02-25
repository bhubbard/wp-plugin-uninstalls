#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wal_checkbox_enable_winterlock_dash_styles'
wp option delete 'see_db_version'
wp option delete 'sweet-energy-efficiency-menuitems'
wp option delete 'sweet-energy-efficiency-submenuitems'
wp option delete 'see_allowed_admins'
wp option delete 'see_allowed_roles'
wp option delete 'see_clickatell_one_api_key'
wp option delete 'see_clickatell_http_api_key'
wp option delete 'see_smsapicom_http_api_key'
wp option delete 'see_smsto_api_key'
wp option delete 'winter_mvc_active_plugins'

