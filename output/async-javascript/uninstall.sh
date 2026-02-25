#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aj_gtmetrix_results'
wp option delete 'aj_gtmetrix_username'
wp option delete 'aj_gtmetrix_api_key'
wp option delete 'aj_gtmetrix_server'
wp option delete 'aj_enabled'
wp option delete 'aj_method'
wp option delete 'aj_jquery'
wp option delete 'aj_async'
wp option delete 'aj_defer'
wp option delete 'aj_exclusions'
wp option delete 'aj_plugin_exclusions'
wp option delete 'aj_theme_exclusions'
wp option delete 'aj_autoptimize_enabled'
wp option delete 'aj_autoptimize_method'
wp option delete 'aj_enabled_logged'
wp option delete 'aj_enabled_shop'
wp option delete 'aj_version'

