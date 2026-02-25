#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kuaza_wlops_css'
wp option delete 'wlops_konu_temasi'
wp option delete 'wlops_default_resimler_nasil_gorunsun'
wp option delete 'kuaza_wlops_loop_direk'
wp option delete 'kuaza_wlops_hide_cat'
wp option delete 'kuaza_wlops_hide_tag'
wp option delete 'kuaza_wlops_hide_upload'
wp option delete 'kuaza_wlops_guvenlik_public'
wp option delete 'kuaza_wlops_guvenlik_private'
wp option delete 'kuaza_wlops_guvenlik_tema'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'wlops_default_resimler_gosterilsinmi'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wlops'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wlops'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wlops'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wlops'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wlops_konu_temasi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wlops_konu_temasi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wlops_konu_temasi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wlops_konu_temasi'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wlops_resimler_nasil_gorunecek'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wlops_resimler_nasil_gorunecek'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wlops_resimler_nasil_gorunecek'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wlops_resimler_nasil_gorunecek'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wlops_loop_direk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wlops_loop_direk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wlops_loop_direk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wlops_loop_direk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wlops_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wlops_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wlops_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wlops_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wlops_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wlops_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wlops_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wlops_views'"
