#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpl_email'
wp option delete 'bpl_ignore'
wp option delete 'bpl_last_run'
wp option delete 'bpl_notified'
wp option delete 'bpl_snapshot'

# Delete Transients
wp transient delete 'bpl_active_plugins'
wp transient delete 'bpl_all_plugins'
wp transient delete 'update_plugins'

