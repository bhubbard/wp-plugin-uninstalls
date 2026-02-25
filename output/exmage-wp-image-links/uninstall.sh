#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exmage_background_process_image_kill_process'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_kill_process'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'exmage_background_process_image_complete'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_complete' OR option_name LIKE '_site_transient_%_complete'"
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exmage_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exmage_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exmage_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exmage_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vi_wad_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vi_wad_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vi_wad_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vi_wad_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
