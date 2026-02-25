-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xyz_credit_link', 'lnap_installed_date', 'xyz_lnap_dnt_shw_notice', 'xyz_lnap_smapsolutions_pack_expiry', 'xyz_lnap_credit_dismiss', 'xyz_lnap_page_names', 'xyz_lnap_lnaf', 'xyz_lnap_secret_key', 'xyz_lnap_lnappscoped_userid', 'xyz_lnap_smapsoln_userid', 'xyz_lnap_lnshare_to_profile', 'xyz_lnap_ln_share_post_company', 'xyz_lnap_xyzscripts_user_id', 'xyz_lnap_xyzscripts_hash_val', 'xyz_lnap_lnapikey', 'xyz_lnap_lnapisecret', 'xyz_lnap_ln_api_permission', 'xyz_lnap_ln_signin_method', 'xyz_lnap_peer_verification', 'xyz_lnap_application_lnarray', 'xyz_lnap_future_to_publish', 'xyz_lnap_apply_filters', 'xyz_lnap_ln_shareprivate', 'xyz_lnap_lnpost_permission', 'xyz_lnap_lnmessage', 'xyz_lnap_free_version', 'xyz_lnap_include_pages', 'xyz_lnap_include_posts', 'xyz_lnap_include_categories', 'xyz_lnap_include_customposttypes', 'xyz_lnap_post_logs', 'xyz_lnap_premium_version_ads', 'xyz_lnap_default_selection_edit', 'xyz_lnap_default_selection_create', 'xyz_lnap_lnpost_method', 'xyz_lnap_enforce_og_tags');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xyz_lnap_insert_og', 'xyz_lnap', 'xyz_lnap_future_to_publish', 'xyz_lnap_notice_dismissed_linkedin');
DELETE FROM wp_usermeta WHERE meta_key IN ('xyz_lnap_insert_og', 'xyz_lnap', 'xyz_lnap_future_to_publish', 'xyz_lnap_notice_dismissed_linkedin');
DELETE FROM wp_termmeta WHERE meta_key IN ('xyz_lnap_insert_og', 'xyz_lnap', 'xyz_lnap_future_to_publish', 'xyz_lnap_notice_dismissed_linkedin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xyz_lnap_insert_og', 'xyz_lnap', 'xyz_lnap_future_to_publish', 'xyz_lnap_notice_dismissed_linkedin');

