#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nos_logging'
wp option delete 'nos_selected_status'
wp option delete 'novarum_osc_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'input_nos_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'input_nos_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'input_nos_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'input_nos_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'input_nos_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'input_nos_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'input_nos_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'input_nos_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'select_status_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'select_status_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'select_status_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'select_status_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'select_status_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'select_status_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'select_status_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'select_status_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'select_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'select_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'select_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'select_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'input_nos_email_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'input_nos_email_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'input_nos_email_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'input_nos_email_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'input_nos_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'input_nos_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'input_nos_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'input_nos_email_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'input_nos_email_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'input_nos_email_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'input_nos_email_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'input_nos_email_content'"
