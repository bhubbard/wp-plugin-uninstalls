#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boxzilla_version'
wp option delete 'boxzilla_settings'
wp option delete 'boxzilla_rules'

# Delete Transients
wp transient delete 'boxzilla_remote_extensions'
wp transient delete 'boxzilla_request_failed'

# Clear Cron Jobs
wp cron event delete 'boxzilla_check_license_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boxzilla_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boxzilla_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boxzilla_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boxzilla_options'"
