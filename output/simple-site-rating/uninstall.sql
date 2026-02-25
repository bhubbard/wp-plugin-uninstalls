-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsmssr_posttype_settings_options', 'wsmssr_question', 'wsmssr_thank_you_html', 'wsmssr_thank_you_heading_html', 'wsmssr_icon_color_html', 'wsmssr_icon_hover_color_html', 'wsmssr_fontawesome_toggle_html');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wsmssr_rating_avg');
DELETE FROM wp_usermeta WHERE meta_key IN ('wsmssr_rating_avg');
DELETE FROM wp_termmeta WHERE meta_key IN ('wsmssr_rating_avg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wsmssr_rating_avg');

