#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wrmj_category_order'
wp option delete 'rmm_category_order'
wp option delete 'rmm_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrmj_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrmj_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrmj_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrmj_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmm_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmm_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmm_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmm_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrmj_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrmj_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrmj_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrmj_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmm_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmm_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmm_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmm_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrmj_term_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrmj_term_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrmj_term_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrmj_term_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmm_term_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmm_term_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmm_term_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmm_term_order'"
