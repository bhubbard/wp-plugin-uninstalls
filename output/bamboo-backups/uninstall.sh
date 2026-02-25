#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bamboo_backups_time'
wp option delete 'bamboo_backups_history'
wp option delete 'bamboo_backups_last_run'

