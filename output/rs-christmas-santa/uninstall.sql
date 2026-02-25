-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rs_christmas_santa_pop_up_type', 'rs_christmas_santa_awesome_santa_flying', 'rs_christmas_santa_awesome_santa_flying_type', 'rs_christmas_santa_awesome_santa_show_on_page', 'rs_christmas_santa_pop_up_position', 'rs_christmas_santa_awesome_santa', 'rs_christmas_santa_music_activation', 'rs_music_show_on_page', 'rs_christmas_santa_music_item', 'rs_christmas_santa_countdown_active', 'rs_christmas_santa_countdown_after_text', 'rs_christmas_santa_countdown_before_text', 'rs_christmas_santa_countdown_type', 'rs_christmas_santa_schedule_active', 'rs_christmas_santa_schedule_before_date');

