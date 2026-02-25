#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbug_settings'
wp option delete 'dbug_error_level'
wp option delete 'dbug_log_filesize'
wp option delete 'dbug_log_path'
wp option delete 'dbug_logging'

