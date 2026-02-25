-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awts_mem_pro_page_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awts_member_role', 'awts_member_facebook', 'awts_member_twitter', 'awts_member_linkedin', 'awts_member_google');
DELETE FROM wp_usermeta WHERE meta_key IN ('awts_member_role', 'awts_member_facebook', 'awts_member_twitter', 'awts_member_linkedin', 'awts_member_google');
DELETE FROM wp_termmeta WHERE meta_key IN ('awts_member_role', 'awts_member_facebook', 'awts_member_twitter', 'awts_member_linkedin', 'awts_member_google');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awts_member_role', 'awts_member_facebook', 'awts_member_twitter', 'awts_member_linkedin', 'awts_member_google');

