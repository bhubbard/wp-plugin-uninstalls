#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tadv_admin_settings'
wp option delete 'tadv_settings'
wp option delete 'tadv_version'
wp option delete 'tadv_options'
wp option delete 'tadv_toolbars'
wp option delete 'tadv_plugins'
wp option delete 'tadv_btns1'
wp option delete 'tadv_btns2'
wp option delete 'tadv_btns3'
wp option delete 'tadv_btns4'
wp option delete 'tadv_allbtns'

