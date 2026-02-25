#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edal_disabled_autoloads'
wp option delete 'edal_dismissed_warnings'
wp option delete 'edal_locked_autoloads'
wp option delete 'edal_total_autoload_size'

# Delete Transients
wp transient delete 'edal_autoload_cache'

