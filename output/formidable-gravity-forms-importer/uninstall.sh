#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rg_gforms_currency'
wp option delete 'rg_form_version'
wp option delete 'rg_gforms_captcha_type'
wp option delete 'rg_gforms_captcha_private_key'
wp option delete 'rg_gforms_captcha_public_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frm_param'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frm_param'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frm_param'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frm_param'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frm_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frm_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frm_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frm_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frm_show_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frm_show_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frm_show_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frm_show_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frm_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frm_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frm_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frm_form_id'"
