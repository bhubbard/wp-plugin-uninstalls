-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('branded_sharebox_api_key', 'branded_sharebox_domain', 'branded_sharebox_show_on', 'branded_sharebox_show_at', 'branded_sharebox_show_counter', 'branded_sharebox_align_where', 'branded_sharebox_button_style', 'branded_sharebox_should_float', 'branded_sharebox_show_non_singular', 'branded_sharebox_icon_color', 'branded_sharebox_icon_color_custom', 'branded_sharebox_icon_size', 'branded_sharebox_icon_size_custom', 'branded_sharebox_url_box', 'branded_sharebox_url_social_link');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('branded_sharebox_link_click_counter', 'branded_sharebox_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('branded_sharebox_link_click_counter', 'branded_sharebox_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('branded_sharebox_link_click_counter', 'branded_sharebox_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('branded_sharebox_link_click_counter', 'branded_sharebox_url');

