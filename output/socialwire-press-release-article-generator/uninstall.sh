#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socialwire_cron_token'
wp option delete 'pcn_generator_settings'
wp option delete 'pcn_generator_unique_id'
wp option delete 'pcn_rss_last_modified'
wp option delete 'pcn_rss_latest_pub_date'
wp option delete 'socialwire_featured_image_settings'
wp option delete 'socialwire_content_image_settings'
wp option delete 'pcn_text_settings'
wp option delete 'pcn_manually_deleted_document_ids'
wp option delete 'pcn_link_settings'
wp option delete 'socialwire_content_text_settings'
wp option delete 'socialwire_custom_field_settings'
wp option delete 'socialwire_cached_browser_domain'

# Delete Transients
wp transient delete 'socialwire_rss_import_in_progress'

# Clear Cron Jobs
wp cron event delete 'socialwire_scheduled_generate'
wp cron event delete 'socialwire_scheduled_rss_fetch'
wp cron event delete 'socialwire_scheduled_url_notify'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcn_document_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcn_document_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcn_document_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcn_document_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcn_url_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcn_url_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcn_url_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcn_url_notified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcn_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcn_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcn_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcn_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcn_eyecatch_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcn_eyecatch_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcn_eyecatch_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcn_eyecatch_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcn_original_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcn_original_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcn_original_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcn_original_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcn_original_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcn_original_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcn_original_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcn_original_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcn_manually_edited'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcn_manually_edited'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcn_manually_edited'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcn_manually_edited'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcn_manual_edit_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcn_manual_edit_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcn_manual_edit_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcn_manual_edit_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcn_manual_content_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcn_manual_content_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcn_manual_content_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcn_manual_content_hash'"
