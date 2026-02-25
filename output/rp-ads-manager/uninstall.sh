#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpam_db_version'

# Delete Transients
wp transient delete 'rpam_quick_action'
wp transient delete 'rpam_saved'
wp transient delete 'rpam_notice'

