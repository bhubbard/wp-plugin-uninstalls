#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kspt_enable_ajax'
wp option delete 'kspt_konu_otomatik'
wp option delete 'kspt_konu_temasi'
wp option delete 'kspt_konu_temasi_css'
wp option delete 'kspt_enable_plugins'
wp option delete 'kspt_settimetime'
wp option delete 'kspt_konudagoster_neresi'
wp option delete 'kspt_disable_search'
wp option delete 'kspt_cache_time'
wp option delete 'kspt_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kpst_konuda_goster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kpst_konuda_goster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kpst_konuda_goster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kpst_konuda_goster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wlops_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wlops_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wlops_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wlops_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wlops_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wlops_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wlops_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wlops_views'"
