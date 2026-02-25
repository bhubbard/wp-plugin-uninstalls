#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clumanager_custom_login_url'
wp option delete 'clumanager_redirect_url'
wp option delete 'clumanager_admin_notice_dismissed'

