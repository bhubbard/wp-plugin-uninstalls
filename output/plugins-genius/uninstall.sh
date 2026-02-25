#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pg_plugin_genius_active'
wp option delete 'pg_my_genius_active_plugins'
wp option delete 'pg_old_active_plugins'

