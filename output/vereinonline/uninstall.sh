#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vereinonline_setting_url'
wp option delete 'vereinonline_setting_usr'
wp option delete 'vereinonline_setting_pwd'
wp option delete 'vereinonline_setting_web'
wp option delete 'vereinonline_setting_ath'
wp option delete 'vereinonline_setting_scr'
wp option delete 'vereinonline_setting_api'

