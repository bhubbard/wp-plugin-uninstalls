#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maintenance_mode'
wp option delete 'maintenance_mode_secret_phrase'
wp option delete 'maintenance_mode_message'
wp option delete 'maintenance_mode_heading'

