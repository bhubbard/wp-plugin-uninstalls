#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alt_text_magic_account_type'
wp option delete 'alt_text_magic_image_credit_count'
wp option delete 'alt_text_magic_image_credit_limit'
wp option delete 'alt_text_magic_monthly_image_count'
wp option delete 'alt_text_magic_monthly_image_limit'
wp option delete 'alt_text_magic_status'
wp option delete 'alt_text_magic_batch_in_progress'
wp option delete 'alt_text_magic_batch_current_idx'
wp option delete 'alt_text_magic_batch_total_images'
wp option delete 'alt_text_magic_batch_result'
wp option delete 'alt_text_magic_total_images'
wp option delete 'alt_text_magic_images_missing_alt_text'
wp option delete 'alt_text_magic_bulk_suggestions'
wp option delete 'alt_text_magic_batch_timestamp'
wp option delete 'alt_text_magic_image_limit_notification_dismissed'
wp option delete 'alt_text_magic_invalid_api_key_notification_dismissed'
wp option delete 'alt_text_magic_language'
wp option delete 'alt_text_magic_generate_on_upload'
wp option delete 'alt_text_magic_api_key'
wp option delete 'alt_text_magic_api_key_is_invalid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
