#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_wpcf7_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_wpcf7_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_wpcf7_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_wpcf7_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_wpcf7_form_opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_wpcf7_form_opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_wpcf7_form_opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_wpcf7_form_opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_wpcf7_form_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_wpcf7_form_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_wpcf7_form_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_wpcf7_form_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_wpcf7_form_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_wpcf7_form_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_wpcf7_form_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_wpcf7_form_title'"
