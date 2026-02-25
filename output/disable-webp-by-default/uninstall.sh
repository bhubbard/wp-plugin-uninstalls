#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_webp_transforms'
wp option delete 'disable_webp_by_default_plugin_version'
wp option delete 'disable_webp_by_default_database_version'

