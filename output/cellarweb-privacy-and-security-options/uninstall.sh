#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CWPS_settings'
wp option delete 'CWPS_chatbot_content'
wp option delete 'cw_chatbot_block_content'

# Delete Transients
wp transient delete 'attempted_login'
wp transient delete 'update_plugins'

