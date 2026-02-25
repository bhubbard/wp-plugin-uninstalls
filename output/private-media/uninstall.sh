#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pvtmed_deactivate_migrate_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pvtmed_needs_fix_%'"
wp option delete 'pvtmed_deactivate_migrate_video'
wp option delete 'pvtmed_deactivate_migrate_audio'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Delete Transients
wp transient delete 'pvtmed_flush'
wp transient delete 'pvtmed_activated_mu_success'
wp transient delete 'pvtmed_activated_mu_failure'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pvtmed_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pvtmed_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pvtmed_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pvtmed_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pvtmed_private'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pvtmed_private'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pvtmed_private'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pvtmed_private'"
