-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bprestrictrestapi', 'bpmoinitsetup', 'bpmofreecurrentversion', 'bpdisableallfeature', 'bpmoregisterpageurl', 'saved_open_page_url', 'bprestrictsbuddypresssection', 'bpenablepagelevelprotect', 'tomas_bbp_member_only_free_custom_links_login', 'bpmemonlypro_enabled_post_type', 'bpstandardcomponent', 'bpmo_user_first_run_guide_bar_free', 'bpopenedcustomizedcomponent', 'bpenableaallbprssrestricts', 'bpenablerssrestricts');
DELETE FROM wp_options WHERE option_name LIKE 'members_only_free_have_new_version_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_members_only_access_to_this_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_members_only_access_to_this_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_members_only_access_to_this_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_members_only_access_to_this_page');

