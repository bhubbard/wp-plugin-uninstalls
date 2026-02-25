#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tblight_installed_at'
wp option delete 'tblight_plugin_version'
wp option delete 'tblight_db_version'

