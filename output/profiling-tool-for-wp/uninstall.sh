#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptfwp_backup_active_plugins'
wp option delete 'PROFILING_TOOL_FOR_WP_LANGUAGE'
wp option delete 'ptfwp_db_version'
wp option delete 'TBIWP_FREE_KEY'

