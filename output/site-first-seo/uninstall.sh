#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfseo_settings'
wp option delete 'sfseo_visits_history'
wp option delete 'sfseo_visits_counts'
wp option delete 'sfseo_visits_daily'
wp option delete 'sfseo_visits'
wp option delete 'sfseo_404_log'
wp option delete 'sfs_404_log'
wp option delete 'sfseo_botblock_mode'
wp option delete 'sfseo_botlog_ip_v'
wp option delete 'sfseo_migrated_prefixes'

# Delete Transients
wp transient delete 'sfseo_quick_wins'
wp transient delete 'sfseo_bb_disabled'
wp transient delete 'sfseo_activation_error'
wp transient delete 'sfs_quick_wins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfs_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfs_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfs_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfs_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfs_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfs_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfs_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfs_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfs_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfs_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfs_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfs_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfs_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfs_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfs_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfs_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfs_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfs_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfs_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfs_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfseo_titles_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfseo_titles_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfseo_titles_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfseo_titles_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
