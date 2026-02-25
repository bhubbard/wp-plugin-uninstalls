#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aatg_is_processing'
wp option delete 'aatg_processing_total'
wp option delete 'aatg_processing_current'
wp option delete 'aatg_text_generator_options'

# Delete Transients
wp transient delete 'aatg_bulk_generation_ids'

# Clear Cron Jobs
wp cron event delete 'ai_process_media_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
