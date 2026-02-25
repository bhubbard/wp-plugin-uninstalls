#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-wiki-tooltip-settings-base'
wp option delete 'wp-wiki-tooltip-settings-error'
wp option delete 'wp-wiki-tooltip-settings-design'
wp option delete 'wp-wiki-tooltip-settings-thumb'
wp option delete 'wp-wiki-tooltip-settings'

