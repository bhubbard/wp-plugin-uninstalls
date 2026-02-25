#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coupg_mcapikey'
wp option delete 'coupg_maillists'
wp option delete 'coupg_default_upgrade'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupg_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupg_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupg_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupg_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupg_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupg_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupg_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupg_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupg_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupg_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupg_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupg_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupg_default_email_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupg_default_email_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupg_default_email_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupg_default_email_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupg_privacy_statement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupg_privacy_statement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupg_privacy_statement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupg_privacy_statement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupg_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupg_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupg_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupg_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupg_em_cofirm_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupg_em_cofirm_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupg_em_cofirm_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupg_em_cofirm_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupg_upg_location_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupg_upg_location_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupg_upg_location_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupg_upg_location_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupg_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupg_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupg_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupg_theme'"
