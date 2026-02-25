#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_sb-iqc-image-ids'
wp option delete '_sb-iqc-current-id'
wp option delete '_sb-iqc-recomp-target-condition'

# Clear Cron Jobs
wp cron event delete 'stillbe_image_quality_control_arg_wpcron_run'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
