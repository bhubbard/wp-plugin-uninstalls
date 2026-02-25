#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ts_auth_options'
wp option delete 'ts_send_options'
wp option delete 'ts_show_credentials'
wp option delete 'ts_migration_done'

