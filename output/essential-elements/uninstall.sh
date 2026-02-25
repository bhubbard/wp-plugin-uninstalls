#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esse_settings'
wp option delete 'esse_modules'
wp option delete 'esse_progress_bar_settings'
wp option delete 'esse_scroll_top_settings'
wp option delete 'esse_scroll_bar_settings'
wp option delete 'esse_version'
wp option delete 'esse_installed'
wp option delete 'esse_flash_notices'

