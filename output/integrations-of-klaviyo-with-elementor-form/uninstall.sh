#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iklaviyoef_app_conf'
wp option delete 'iklaviyoef_db_version'
wp option delete 'iklaviyoef_installed'
wp option delete 'iklaviyoef_version'

