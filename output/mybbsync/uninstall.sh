#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mbsync_host'
wp option delete 'mbsync_db'
wp option delete 'mbsync_db_username'
wp option delete 'mbsync_db_password'
wp option delete 'mbsync_tableprefix'
wp option delete 'mbsync_mybbroot'

