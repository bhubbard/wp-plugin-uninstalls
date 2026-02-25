#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woolab_icdic_notice_settings'
wp option delete 'woolab_icdic_toggle_switch'
wp option delete 'woolab_icdic_country_switch'
wp option delete 'woolab_icdic_vat_exempt_switch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woolab-icdic-notice-dismissed1243'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woolab-icdic-notice-dismissed1243'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woolab-icdic-notice-dismissed1243'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woolab-icdic-notice-dismissed1243'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dic_dph'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dic_dph'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dic_dph'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dic_dph'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_ic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_ic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_ic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_ic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_dic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_dic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_dic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_dic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_dic_dph'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_dic_dph'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_dic_dph'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_dic_dph'"
