-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cb_bbpress_vis_editor', 'cb_bbpress_forum_settings', 'cb_bbpress_enable_shortcode', 'cb_bbpress_tinymce_bbcode_editor', 'cb_bbpress_forum_in_search', 'cb_bbpress_topic_in_search', 'cb_bbpress_reply_in_search', 'cb_bbpress_new_topic_link', 'cb_bbpress_load_content_single_topic_template', 'cb_bbpress_bbcode_enabled', 'cb_bbpress_quote_enabled', 'cb_bbpress_set_tinymce_default', 'cb_bbpress_replace_bbpress_signature_with_xprofile_field', 'cb_bbpress_show_username', 'cb_bbpress_login_url_option', 'cb_bbpress_login_url', 'cb_bbpress_login_url_custom', 'cb_bbpress_logout_url_option', 'cb_bbpress_logout_url', 'cb_bbpress_logout_url_custom', 'cb_bbpress_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_anonymous_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_anonymous_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_anonymous_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_anonymous_name');

