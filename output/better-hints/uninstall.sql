-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('betterhints_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hint_url', '_hint_post_content', '_hint_condition1', '_hint_condition1_value', '_hint_condition1_operator', '_hint_condition1_agent', '_hint_condition1_user_role', 'post_content', '_hint_clicks');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hint_url', '_hint_post_content', '_hint_condition1', '_hint_condition1_value', '_hint_condition1_operator', '_hint_condition1_agent', '_hint_condition1_user_role', 'post_content', '_hint_clicks');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hint_url', '_hint_post_content', '_hint_condition1', '_hint_condition1_value', '_hint_condition1_operator', '_hint_condition1_agent', '_hint_condition1_user_role', 'post_content', '_hint_clicks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hint_url', '_hint_post_content', '_hint_condition1', '_hint_condition1_value', '_hint_condition1_operator', '_hint_condition1_agent', '_hint_condition1_user_role', 'post_content', '_hint_clicks');

