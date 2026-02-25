#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_right_click_enabled'
wp option delete 'show_topbar_panel'
wp option delete 'disable_rest_api'

