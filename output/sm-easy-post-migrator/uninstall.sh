#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smepm_settings'
wp option delete 'content_migration_pro_settings'

# Delete Transients
wp transient delete 'content_migration_pro_cache'

# Clear Cron Jobs
wp cron event delete 'content_migration_pro_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_migration_pro_intro_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_migration_pro_intro_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_migration_pro_intro_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_migration_pro_intro_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_migration_pro_credentials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_migration_pro_credentials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_migration_pro_credentials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_migration_pro_credentials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smepm_upgrade_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smepm_upgrade_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smepm_upgrade_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smepm_upgrade_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
