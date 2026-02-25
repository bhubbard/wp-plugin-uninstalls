#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_status'
wp option delete 'theme-menuboots'
wp option delete 'theme-header-name'
wp option delete 'theme-footer-name'

