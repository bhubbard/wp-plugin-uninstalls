#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pfg_filters'
wp option delete 'awl_portfolio_filter_gallery_categories'
wp option delete 'pfg_last_backup'
wp option delete 'pfg_global_settings'
wp option delete 'pfg_last_backup_date'
wp option delete 'pfg_filters_legacy_backup'
wp option delete 'pfg_migration_log'
wp option delete 'pfg_installed_version'
wp option delete 'pfg_previous_version'
wp option delete 'pfg_first_installed_version'
wp option delete 'pfg_version_timestamp'
wp option delete 'pfg_db_version'
wp option delete 'pfg_show_tour'

# Delete Transients
wp transient delete 'pfg_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'pfg_continue_migration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pfg_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pfg_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pfg_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pfg_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pfg_migration_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pfg_migration_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pfg_migration_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pfg_migration_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pfg_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pfg_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pfg_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pfg_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pfg_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pfg_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pfg_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pfg_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pfg_legacy_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pfg_legacy_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pfg_legacy_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pfg_legacy_backup'"
