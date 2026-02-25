#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_db_version'
wp option delete 'my_plugin_db_version'

