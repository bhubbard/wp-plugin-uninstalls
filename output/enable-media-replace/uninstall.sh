#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-notices'"
wp option delete 'enable_media_replace'
wp option delete 'emr_news'
wp option delete 'emr_url_cache'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_emr_%' OR option_name LIKE '_site_transient_emr_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_emr_replace_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_emr_replace_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_emr_replace_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_emr_replace_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
