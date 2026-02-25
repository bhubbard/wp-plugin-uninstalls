-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('up_profile_page_title', 'up_profile_page_name', 'up_profile_page_id', 'up_profile_stats', 'up_profile_stat_names', 'up_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_user_level', 'up_profile_page_text', 'description', 'aim', 'yim', 'jabber');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_user_level', 'up_profile_page_text', 'description', 'aim', 'yim', 'jabber');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_user_level', 'up_profile_page_text', 'description', 'aim', 'yim', 'jabber');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_user_level', 'up_profile_page_text', 'description', 'aim', 'yim', 'jabber');

