#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_count'
wp option delete 'wp_calendar_block_has_published_posts'
wp option delete 'gutenberg-experiments'
wp option delete 'site_logo'
wp option delete 'wp_notes_notify'
wp option delete 'active_templates'
wp option delete 'gutenberg_version_migration'
wp option delete 'gutenberg_last_synchronize_theme_template_checks'
wp option delete 'gutenberg_last_synchronize_theme_template-part_checks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_font_face_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_font_face_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_font_face_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_font_face_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_inactive_by_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_inactive_by_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_inactive_by_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_inactive_by_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_content'"
