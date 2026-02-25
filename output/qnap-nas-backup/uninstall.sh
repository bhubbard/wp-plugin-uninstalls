#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_elementor_global_css'
wp option delete 'elementor-custom-breakpoints-files'
wp option delete 'fs_accounts'
wp option delete 'fs_dbg_accounts'
wp option delete 'fs_active_plugins'
wp option delete 'fs_api_cache'
wp option delete 'fs_dbg_api_cache'
wp option delete 'fs_debug_mode'

