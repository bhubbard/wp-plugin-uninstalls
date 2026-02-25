-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wetravel_trips_env', 'wetravel_trips_slug', 'wetravel_trips_designs', 'wetravel_trips_items_per_slide', 'wetravel_trips_items_per_row', 'wetravel_trips_items_per_page', 'wetravel_trips_border_radius', 'wetravel_trips_embed_code', 'wetravel_trips_last_saved', 'wetravel_trips_user_id', 'wetravel_trips_src', 'wetravel_trips_display_type', 'wetravel_trips_button_type', 'wetravel_trips_button_color', 'wetravel_trips_load_more_text', 'wetravel_trips_search_visibility');

