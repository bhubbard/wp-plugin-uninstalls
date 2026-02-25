#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_name'
wp option delete 'plugin_version'
wp option delete 'edit_per_page'

