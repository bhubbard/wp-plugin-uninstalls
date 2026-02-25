#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aatg_openai_api_key'
wp option delete 'aatg_openai_model'
wp option delete 'aatg_image_size'
wp option delete 'aatg_image_detail'
wp option delete 'aatg_site_context'
wp option delete 'aatg_auto_title'
wp option delete 'aatg_send_filename'
wp option delete 'aatg_title_full_context'
wp option delete 'aatg_bulk_delay'
wp option delete 'aatg_bulk_batch_size'
wp option delete 'aatg_language'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
