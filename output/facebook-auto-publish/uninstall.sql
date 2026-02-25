-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xyz_credit_link', 'fbap_installed_date', 'xyz_fbap_dnt_shw_notice', 'xyz_fbap_smapsolutions_pack_expiry', 'xyz_fbap_credit_dismiss', 'xyz_fbap_page_names', 'xyz_fbap_af', 'xyz_fbap_secret_key', 'xyz_fbap_fb_numericid', 'xyz_fbap_smapsoln_userid', 'xyz_fbap_xyzscripts_user_id', 'xyz_fbap_xyzscripts_hash_val', 'xyz_fbap_application_id', 'xyz_fbap_application_secret', 'xyz_fbap_peer_verification', 'xyz_fbap_fb_token', 'xyz_fbap_pages_ids', 'xyz_fbap_application_name', 'xyz_fbap_message', 'xyz_fbap_po_method', 'xyz_fbap_post_permission', 'xyz_fbap_current_appln_token', 'xyz_fbap_apply_filters', 'xyz_fbap_free_version', 'xyz_fbap_include_pages', 'xyz_fbap_include_posts', 'xyz_fbap_include_categories', 'xyz_fbap_include_customposttypes', 'xyz_fbap_post_logs', 'xyz_twap_premium_version_ads', 'xyz_fbap_default_selection_edit', 'xyz_fbap_default_selection_create', 'xyz_fbap_app_sel_mode', 'xyz_fbap_enforce_og_tags', 'xyz_fbap_clear_fb_cache', 'xyz_fbap_premium_version_ads', 'xyz_fbap_caption_for_fb_attachment');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xyz_fbap_insert_og', 'xyz_fbap', 'xyz_fbap_future_to_publish');
DELETE FROM wp_usermeta WHERE meta_key IN ('xyz_fbap_insert_og', 'xyz_fbap', 'xyz_fbap_future_to_publish');
DELETE FROM wp_termmeta WHERE meta_key IN ('xyz_fbap_insert_og', 'xyz_fbap', 'xyz_fbap_future_to_publish');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xyz_fbap_insert_og', 'xyz_fbap', 'xyz_fbap_future_to_publish');

