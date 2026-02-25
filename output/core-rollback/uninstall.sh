#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rollback_settings'

# Delete Transients
wp transient delete 'core_rollback'
wp transient delete '_core_rollback'
wp transient delete '_core_rollback_offers'

