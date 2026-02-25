#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_sir_plugin_version'
wp option delete 'wp_sir_settings'
wp option delete 'wp_sir_image_processor'
wp option delete 'wp_sir_prev_plugin_version'
wp option delete 'wp_sir_processed_attachments'
wp option delete 'wp_sir_review_request_notice_dismissed'
wp option delete 'wp_sir_plugin_installed_at'
wp option delete 'ppsir_settings'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'wp_sir_review_request_notice_remindme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_processed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_processed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_processed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_processed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_image_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_image_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_image_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_image_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_processed_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_processed_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_processed_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_processed_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_variation_gallery_images'"
