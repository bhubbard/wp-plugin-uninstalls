#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Kfactor'
wp option delete 'freepicsmashshared'
wp option delete 'picsmash_db_version'
wp option delete 'picsmash_version'
wp option delete 'picsmash_activation'
wp option delete 'MediaC'
wp option delete 'NextG'
wp option delete 'ShowScore'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'losses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'losses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'losses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'losses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'img_full'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'img_full'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'img_full'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'img_full'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mediaID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mediaID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mediaID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mediaID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'picsmash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'picsmash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'picsmash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'picsmash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'picshare'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'picshare'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'picshare'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'picshare'"
