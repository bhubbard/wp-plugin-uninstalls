-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sspp_select_template', 'sspp_show_buttons', 'sspp_show_in_pages', 'sspp_enable_disable', 'sspp_show_social_links');

