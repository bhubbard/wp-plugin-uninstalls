#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xyz_credit_link'
wp option delete 'lnap_installed_date'
wp option delete 'xyz_lnap_dnt_shw_notice'
wp option delete 'xyz_lnap_smapsolutions_pack_expiry'
wp option delete 'xyz_lnap_credit_dismiss'
wp option delete 'xyz_lnap_page_names'
wp option delete 'xyz_lnap_lnaf'
wp option delete 'xyz_lnap_secret_key'
wp option delete 'xyz_lnap_lnappscoped_userid'
wp option delete 'xyz_lnap_smapsoln_userid'
wp option delete 'xyz_lnap_lnshare_to_profile'
wp option delete 'xyz_lnap_ln_share_post_company'
wp option delete 'xyz_lnap_xyzscripts_user_id'
wp option delete 'xyz_lnap_xyzscripts_hash_val'
wp option delete 'xyz_lnap_lnapikey'
wp option delete 'xyz_lnap_lnapisecret'
wp option delete 'xyz_lnap_ln_api_permission'
wp option delete 'xyz_lnap_ln_signin_method'
wp option delete 'xyz_lnap_peer_verification'
wp option delete 'xyz_lnap_application_lnarray'
wp option delete 'xyz_lnap_future_to_publish'
wp option delete 'xyz_lnap_apply_filters'
wp option delete 'xyz_lnap_ln_shareprivate'
wp option delete 'xyz_lnap_lnpost_permission'
wp option delete 'xyz_lnap_lnmessage'
wp option delete 'xyz_lnap_free_version'
wp option delete 'xyz_lnap_include_pages'
wp option delete 'xyz_lnap_include_posts'
wp option delete 'xyz_lnap_include_categories'
wp option delete 'xyz_lnap_include_customposttypes'
wp option delete 'xyz_lnap_post_logs'
wp option delete 'xyz_lnap_premium_version_ads'
wp option delete 'xyz_lnap_default_selection_edit'
wp option delete 'xyz_lnap_default_selection_create'
wp option delete 'xyz_lnap_lnpost_method'
wp option delete 'xyz_lnap_enforce_og_tags'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_lnap_insert_og'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_lnap_insert_og'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_lnap_insert_og'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_lnap_insert_og'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_lnap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_lnap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_lnap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_lnap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_lnap_future_to_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_lnap_future_to_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_lnap_future_to_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_lnap_future_to_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_lnap_notice_dismissed_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_lnap_notice_dismissed_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_lnap_notice_dismissed_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_lnap_notice_dismissed_linkedin'"
