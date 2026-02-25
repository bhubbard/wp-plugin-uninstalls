#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'demopress_run_generator'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_demopress_generated_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_demopress_generated_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_demopress_generated_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_demopress_generated_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
