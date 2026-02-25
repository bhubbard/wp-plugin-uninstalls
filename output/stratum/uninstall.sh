#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stratum_api'
wp option delete 'stratum_instagram_token_cron_error_message'
wp option delete 'stratum_db_version'
wp option delete 'stratum_db_version_history'
wp option delete 'stratum_style'
wp option delete 'stratum_widgets'

# Delete Transients
wp transient delete 'stratum_instagram_response_data'

# Clear Cron Jobs
wp cron event delete 'stratum_refresh_instagram_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
