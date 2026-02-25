-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kmo_social_facebook', 'kmo_social_twitter', 'kmo_social_pinterest', 'kmo_social_googleplus', 'kmo_social_facebook_text', 'kmo_social_twitter_text', 'kmo_social_pinterest_text', 'kmo_social_googleplus_text', 'kmo_social_color', 'kmo_social_font_size', 'kmo_social_width', 'kmo_social_height', 'kmo_social_position', 'kmo_social_top', 'kmo_social_in', 'kmo_social_out', 'kmo_social_font-size');

