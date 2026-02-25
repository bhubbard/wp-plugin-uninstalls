#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phpmail_from_email'
wp option delete 'phpmail_password'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optin_From_List_Fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optin_From_List_Fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optin_From_List_Fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optin_From_List_Fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optint_redUrl_Flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optint_redUrl_Flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optint_redUrl_Flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optint_redUrl_Flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optint_Url_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optint_Url_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optint_Url_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optint_Url_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'FromUrlOptin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'FromUrlOptin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'FromUrlOptin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'FromUrlOptin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Optin_Form_Html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Optin_Form_Html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Optin_Form_Html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Optin_Form_Html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Optin_Flds_fld'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Optin_Flds_fld'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Optin_Flds_fld'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Optin_Flds_fld'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Optin_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Optin_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Optin_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Optin_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Optin_List_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Optin_List_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Optin_List_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Optin_List_ID'"
