#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'koala_ai_first_image_as_featured'
wp option delete 'koala_ai_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'koala_ai_process_image_import'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_koala_ai_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_koala_ai_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_koala_ai_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_koala_ai_original_url'"
