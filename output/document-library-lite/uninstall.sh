#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'document-library-lite-setup-wizard_completed'
wp option delete 'dlp_should_flush_rewrite_rules'
wp option delete 'dlw_should_flush_rewrite_rules'
wp option delete 'dlw_review_notice_triggered'
wp option delete 'dlw_document_count'
wp option delete 'dlw_review_notice_user'
wp option delete 'dlw_review_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlp_document_link_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlp_document_link_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlp_document_link_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlp_document_link_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlp_attached_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlp_attached_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlp_attached_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlp_attached_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
