#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'canalblog_importer_blog_uri'
wp option delete 'canalblog_overwrite_contents'
wp option delete 'canalblog_comments_status'
wp option delete 'canalblog_trackbacks_status'
wp option delete 'canalblog_importer_step'
wp option delete 'canalblog_importer_archives_current_index'

# Delete Transients
wp transient delete 'canalblog_have_finished_archives'
wp transient delete 'canalblog_months'
wp transient delete 'canalblog_step_offset'
wp transient delete 'canalblog_permalinks'
wp transient delete 'canalblog_have_finished_categories'
wp transient delete 'canalblog_categories'
wp transient delete 'canalblog_have_finished_cleanup'
wp transient delete 'canalblog_have_finished_posts'
wp transient delete 'canalblog_have_finished_tags'
wp transient delete 'canalblog_tags'
wp transient delete 'canalblog_post_uris'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'canalblog_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'canalblog_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'canalblog_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'canalblog_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'canalblog_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'canalblog_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'canalblog_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'canalblog_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'canalblog_attachment_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'canalblog_attachment_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'canalblog_attachment_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'canalblog_attachment_uri'"
