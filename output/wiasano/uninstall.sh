#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wiasano_options'

# Clear Cron Jobs
wp cron event delete 'wiasano_check_posts'
wp cron event delete 'wiasano_send_categories'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
