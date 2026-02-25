#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amanuke_pp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%use_prettyphoto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%use_prettyphoto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%use_prettyphoto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%use_prettyphoto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%url_lightbox_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%url_lightbox_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%url_lightbox_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url_lightbox_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url_lightbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url_lightbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url_lightbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url_lightbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%url_lightbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%url_lightbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%url_lightbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url_lightbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%url_lightbox_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%url_lightbox_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%url_lightbox_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url_lightbox_group'"
