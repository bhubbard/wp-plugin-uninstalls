#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'db_backup_frequency'
wp option delete 'db_backup_send_email'
wp option delete 'db_backup_key'
wp option delete 'db_backup_last_timestamp'

