#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'drccp_settings'
wp option delete 'drccp_admin_notice_dismissed'
wp option delete 'drccp_custom_menu_settings'

