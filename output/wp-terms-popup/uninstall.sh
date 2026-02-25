#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptp_version'
wp option delete 'termsopt_agreetxt'
wp option delete 'termsopt_agree_redirecturl'
wp option delete 'termsopt_disagreetxt'
wp option delete 'termsopt_redirecturl'
wp option delete 'termsopt_buttons_always_visible'
wp option delete 'termsopt_adminenabled'
wp option delete 'termsopt_sitewide'
wp option delete 'termsopt_javascript'
wp option delete 'termsopt_page'
wp option delete 'termsopt_expiry'
wp option delete 'termsopt_user_visiblity'
wp option delete 'termsopt_opac'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_agreetxt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_agreetxt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_agreetxt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_agreetxt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_agree_redirecturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_agree_redirecturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_agree_redirecturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_agree_redirecturl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_disagreetxt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_disagreetxt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_disagreetxt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_disagreetxt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_redirecturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_redirecturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_redirecturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_redirecturl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_buttons_always_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_buttons_always_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_buttons_always_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_buttons_always_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_acknowledgement_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_acknowledgement_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_acknowledgement_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_acknowledgement_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_acknowledgement_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_acknowledgement_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_acknowledgement_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_acknowledgement_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_age_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_age_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_age_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_age_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_age_requirement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_age_requirement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_age_requirement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_age_requirement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_age_date_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_age_date_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_age_date_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_age_date_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_age_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_age_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_age_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_age_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_disablepop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_disablepop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_disablepop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_disablepop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_enablepop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_enablepop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_enablepop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_enablepop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms_selectedterms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms_selectedterms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms_selectedterms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms_selectedterms'"
