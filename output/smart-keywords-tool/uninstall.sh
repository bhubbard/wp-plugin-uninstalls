#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_skt_ver'
wp option delete 'wb_skt_baidu_app_error'
wp option delete 'wb_skt_baidu_app_token'
wp option delete 'wb_skt_api_error'
wp option delete 'wb_skt_kws'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ver'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_skt_cnf_%'"
wp option delete 'wb_skt_promote'

# Delete Transients
wp transient delete 'update_plugins'

