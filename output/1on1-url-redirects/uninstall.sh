#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickppr_redirects'
wp option delete 'quickppr_redirects_meta'
wp option delete 'ppr_override-nofollow'
wp option delete 'ppr_override-newwindow'
wp option delete 'ppr_use-jquery'
wp option delete 'ppr_qpprptypeok'
wp option delete 'ppr_override-redirect-type'
wp option delete 'ppr_override-active'
wp option delete 'ppr_override-URL'
wp option delete 'ppr_override-rewrite'
wp option delete 'qppr_meta_addon_content'
wp option delete 'ppr_meta-message'
wp option delete 'qppr_meta_addon_sec'
wp option delete 'ppr_meta-seconds'
wp option delete 'ppr_override-casesensitive'
wp option delete 'ppr_show-columns'
wp option delete 'ppr_version'
wp option delete 'ppr_meta_clean'
wp option delete 'ppr_use-custom-post-types'
wp option delete 'qppr_jQuery_hide_message2'
wp option delete 'qppr_meta_addon_load'
wp option delete 'qppr_meta_addon_trigger'
wp option delete 'qppr_meta_append_to'
wp option delete 'enable_tag_redirect'
wp option delete 'qppr_jQuery_hide_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pprredirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pprredirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pprredirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pprredirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pprredirect_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pprredirect_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pprredirect_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pprredirect_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pprredirect_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pprredirect_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pprredirect_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pprredirect_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pprredirect_rewritelink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pprredirect_rewritelink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pprredirect_rewritelink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pprredirect_rewritelink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pprredirect_newwindow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pprredirect_newwindow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pprredirect_newwindow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pprredirect_newwindow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pprredirect_relnofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pprredirect_relnofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pprredirect_relnofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pprredirect_relnofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pprredirect_meta_secs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pprredirect_meta_secs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pprredirect_meta_secs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pprredirect_meta_secs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qppr_meta_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qppr_meta_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qppr_meta_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qppr_meta_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qppr_meta_load'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qppr_meta_load'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qppr_meta_load'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qppr_meta_load'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qppr_meta_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qppr_meta_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qppr_meta_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qppr_meta_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qppr_meta_append'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qppr_meta_append'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qppr_meta_append'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qppr_meta_append'"
