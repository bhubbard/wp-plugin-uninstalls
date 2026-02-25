#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vlocker_audit_log'
wp option delete 'vlocker_keep_settings_on_delete'

# Delete Transients
wp transient delete 'vlocker_is_multi_admin'
wp transient delete 'update_plugins'
wp transient delete 'vlocker_update_blocked'

