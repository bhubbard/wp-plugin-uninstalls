-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('number_of_particles', 'color_of_particles', 'type_of_particle', 'border_width_of_particles', 'border_color_of_particles', 'polygon_sides_of_particles', 'image_as_particle', 'opacity_of_particles', 'random_opacity_of_particles', 'size_of_particles', 'line_linked_color_of_particles', 'opacity_of_particles_line', 'line_width_between_particles', 'speed_of_particles', 'direction_of_particles', 'random_movement_of_particles', 'out_mode_of_particles', 'bounce_between_particles', 'enable_hover_on_particles', 'hover_mode_on_particles', 'enable_click_on_particles', 'click_mode_on_particles', 'grab_distance_on_particles', 'grab_line_opacity_on_particles', 'bubble_distance_on_particles', 'bubble_size_on_hover_particles', 'hover_event_duration_particles', 'bubble_line_opacity_on_particles', 'speed_on_hover_particles', 'repulse_distance_on_particles', 'repulse_duration_on_particles', 'push_nb_particles', 'remove_number_on_click_particles', 'background_color_of_banner', 'background_image_of_banner', 'height_of_banner', 'banner_header_title_color', 'banner_header_title_font_size', 'banner_header_title', 'banner_description_text_color', 'banner_description_text_size', 'banner_description', 'banner_call_to_action_bg', 'banner_call_to_action_color', 'banner_call_to_action_url', 'banner_call_to_action');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

