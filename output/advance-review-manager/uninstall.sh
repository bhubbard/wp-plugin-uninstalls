#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adrm_comments_module_enabled'
wp option delete 'wp_statuses'
wp option delete 'adrm_statuses'
wp option delete 'adrm_global_settings'
wp option delete 'ADRM_DB_VERSION'

