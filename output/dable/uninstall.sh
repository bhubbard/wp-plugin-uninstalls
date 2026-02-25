#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dable-settings'
wp option delete 'dable-target-post-types'
wp option delete 'dable-og-settings'
wp option delete 'dable-widget-settings'
wp option delete 'dable_plugin_version'

