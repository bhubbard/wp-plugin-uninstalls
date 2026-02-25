#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sacassettings_options'
wp option delete 'sacastitles_options'
wp option delete 'seonte-ai-content_options'
wp option delete 'wswemail_subjects_options'
wp option delete 'wsw_options'
wp option delete 'last_posted_date'
wp option delete 'daily_post_count'
wp option delete 'last_posted_date_for_retro'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'facebook_page_access_token'
wp option delete 'facebook_page_id'

# Delete Transients
wp transient delete 'sacas_we_working'

# Clear Cron Jobs
wp cron event delete 'my_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
