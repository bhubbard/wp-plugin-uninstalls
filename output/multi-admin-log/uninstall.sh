#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multiadminlog_settings'
wp option delete 'multiadminlog_db_version'

