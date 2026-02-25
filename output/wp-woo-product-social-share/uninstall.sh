#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsi_register_settings_fields'
wp option delete 'wpsi_active_plugins'

