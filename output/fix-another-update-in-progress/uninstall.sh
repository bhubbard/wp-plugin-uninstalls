#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_updater.lock'
wp option delete 'core_updater'

