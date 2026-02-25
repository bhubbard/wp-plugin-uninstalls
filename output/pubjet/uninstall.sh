#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pubjet_cron_cleanup_done'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pubjet_permanent_hide_admin_notice_%'"
wp option delete 'pubjet_migration_delete_first_image_v530'
wp option delete 'pubjet_debug_mode'
wp option delete 'triboon_token'
wp option delete 'triboon_default_category'
wp option delete 'triboon_debug_mode'

# Delete Transients
wp transient delete 'pubjet_daily_plugin_status_check'
wp transient delete 'pubjet_reportage_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pubjet_remind_admin_notice_%' OR option_name LIKE '_site_transient_pubjet_remind_admin_notice_%'"
wp transient delete 'pubjet_register_cron_lock'
wp transient delete 'update_plugins'
wp transient delete 'pubjet_update_plugin_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pubjet_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pubjet_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pubjet_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pubjet_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pubjet_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pubjet_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pubjet_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pubjet_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pubjet_use_cdn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pubjet_use_cdn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pubjet_use_cdn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pubjet_use_cdn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pubjet_thumbnail_data_attach'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pubjet_thumbnail_data_attach'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pubjet_thumbnail_data_attach'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pubjet_thumbnail_data_attach'"
