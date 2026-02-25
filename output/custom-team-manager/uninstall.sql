-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_ajax_notification', 'cmt_single_page', 'cmt_ajax_load', 'cmt_show_gridview', 'cmt_mem_pro_page_slug', 'cmt_profile_page', 'cmt_mem_per_page', 'cmt_custom_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cmt_member_role', 'cmt_member_facebook', 'cmt_member_twitter', 'cmt_member_linkedin');
DELETE FROM wp_usermeta WHERE meta_key IN ('cmt_member_role', 'cmt_member_facebook', 'cmt_member_twitter', 'cmt_member_linkedin');
DELETE FROM wp_termmeta WHERE meta_key IN ('cmt_member_role', 'cmt_member_facebook', 'cmt_member_twitter', 'cmt_member_linkedin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cmt_member_role', 'cmt_member_facebook', 'cmt_member_twitter', 'cmt_member_linkedin');

