#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lfaf_expiration_date'
wp option delete 'lfaf_included_post_types'
wp option delete 'lfaf_clear_ignored'
wp option delete 'wp_archive_updater_ignored'
wp option delete 'Y-m-d'

# Delete Transients
wp transient delete 'wp_archive_updater_todays_page'

