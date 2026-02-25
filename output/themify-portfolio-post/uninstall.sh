#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__portfolio_slug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themify_saved_%'"
wp option delete 'themify_saved_colors'
wp option delete 'themify_saved_gradients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themify_gallery_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themify_gallery_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themify_gallery_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themify_gallery_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_launch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_launch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_launch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_launch'"
