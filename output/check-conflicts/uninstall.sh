#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'check_conflicts_settings'
wp option delete 'check_conflicts_backup'

