#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nusvg_db_version'
wp option delete 'nusvg_plugin_version'
wp option delete 'nusvg_expiration'

