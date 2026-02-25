#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_everything_settings'

# Delete Transients
wp transient delete 'disable_everything_dbtype'
wp transient delete 'disable_everything_dbversion'

