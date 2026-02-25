#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'puca_enable_cache'
wp option delete 'puca_cache_lifetime'
wp option delete 'puca_enable_compression'
wp option delete 'puca_minify_html'
wp option delete 'puca_lazy_load'
wp option delete 'puca_plugin_version'

# Clear Cron Jobs
wp cron event delete 'puca_cleanup_event'

