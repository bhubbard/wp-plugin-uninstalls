-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bloglovin_follow_button_code', 'bloglovin_follow_show_at_top', 'bloglovin_follow_show_at_bottom', 'bloglovin_follow_show_on_page', 'bloglovin_follow_show_on_post', 'bloglovin_follow_show_on_home', 'bloglovin_follow_show_on_search', 'bloglovin_follow_show_on_archive', 'bloglovin_follow_margin_top', 'bloglovin_follow_margin_bottom', 'bloglovin_follow_margin_left', 'bloglovin_follow_margin_right', 'bloglovin_follow_excl_post', 'bloglovin_follow_excl_cat', 'bloglovin_follow_css_style', 'bloglovin_follow_css_class');
DELETE FROM wp_options WHERE option_name LIKE 'bloglovin_follow_show_on_post_type_%';

