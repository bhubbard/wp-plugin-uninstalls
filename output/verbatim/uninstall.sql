-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vrbtm_search_container', 'vrbtm_highlight_parent', 'vrbtm_allow_images', 'vrbtm_animated', 'vrbtm_animation_speed', 'vrbtm_scrolling_offset', 'vrbtm_added_class', 'vrbtm_highlighted_class', 'vrbtm_highlighted_color', 'vrbtm_selected_class', 'vrbtm_button_class', 'vrbtm_bitly_token');

