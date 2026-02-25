#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'av_facturare'
wp option delete 'woofacturareproupsell'
wp option delete 'facturare-rate-time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cnp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cnp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cnp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cnp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cui'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cui'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cui'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cui'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nr_reg_com'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nr_reg_com'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nr_reg_com'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nr_reg_com'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nume_banca'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nume_banca'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nume_banca'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nume_banca'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iban'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iban'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iban'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iban'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tip_facturare'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tip_facturare'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tip_facturare'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tip_facturare'"
