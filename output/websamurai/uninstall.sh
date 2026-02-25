#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'websamurai_cp_auth_key'
wp option delete 'websamurai_cp_site_id'
wp option delete 'active_sitewide_plugins'
wp option delete 'websamurai_cp_connected_at'
wp option delete 'websamurai_cp_user_data'
wp option delete 'websamurai_cp_user_refreshed_at'
wp option delete 'websamurai_cp_site_synced_at'

# Clear Cron Jobs
wp cron event delete 'websamurai_daily_oauth_refresh'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
