#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xyz_credit_link'
wp option delete 'fbap_installed_date'
wp option delete 'xyz_fbap_dnt_shw_notice'
wp option delete 'xyz_fbap_smapsolutions_pack_expiry'
wp option delete 'xyz_fbap_credit_dismiss'
wp option delete 'xyz_fbap_page_names'
wp option delete 'xyz_fbap_af'
wp option delete 'xyz_fbap_secret_key'
wp option delete 'xyz_fbap_fb_numericid'
wp option delete 'xyz_fbap_smapsoln_userid'
wp option delete 'xyz_fbap_xyzscripts_user_id'
wp option delete 'xyz_fbap_xyzscripts_hash_val'
wp option delete 'xyz_fbap_application_id'
wp option delete 'xyz_fbap_application_secret'
wp option delete 'xyz_fbap_peer_verification'
wp option delete 'xyz_fbap_fb_token'
wp option delete 'xyz_fbap_pages_ids'
wp option delete 'xyz_fbap_application_name'
wp option delete 'xyz_fbap_message'
wp option delete 'xyz_fbap_po_method'
wp option delete 'xyz_fbap_post_permission'
wp option delete 'xyz_fbap_current_appln_token'
wp option delete 'xyz_fbap_apply_filters'
wp option delete 'xyz_fbap_free_version'
wp option delete 'xyz_fbap_include_pages'
wp option delete 'xyz_fbap_include_posts'
wp option delete 'xyz_fbap_include_categories'
wp option delete 'xyz_fbap_include_customposttypes'
wp option delete 'xyz_fbap_post_logs'
wp option delete 'xyz_twap_premium_version_ads'
wp option delete 'xyz_fbap_default_selection_edit'
wp option delete 'xyz_fbap_default_selection_create'
wp option delete 'xyz_fbap_app_sel_mode'
wp option delete 'xyz_fbap_enforce_og_tags'
wp option delete 'xyz_fbap_clear_fb_cache'
wp option delete 'xyz_fbap_premium_version_ads'
wp option delete 'xyz_fbap_caption_for_fb_attachment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_fbap_insert_og'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_fbap_insert_og'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_fbap_insert_og'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_fbap_insert_og'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_fbap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_fbap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_fbap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_fbap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xyz_fbap_future_to_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xyz_fbap_future_to_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xyz_fbap_future_to_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xyz_fbap_future_to_publish'"
