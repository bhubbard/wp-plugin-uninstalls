#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inbox_enabled'
wp option delete 'inbox_api_key'
wp option delete 'ib_db_ver'
wp option delete 'ib_plugin_activated'
wp option delete 'ib_install_date'

