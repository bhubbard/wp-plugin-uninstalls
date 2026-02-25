#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'supportmonitor_installed'
wp option delete 'supportmonitor_version'

