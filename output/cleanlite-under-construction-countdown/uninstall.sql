-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cleanlite_uc_enabled', 'cleanlite_uc_logo', 'cleanlite_uc_headline', 'cleanlite_uc_description', 'cleanlite_uc_bg', 'cleanlite_uc_font_family', 'cleanlite_uc_color_heading', 'cleanlite_uc_color_text', 'cleanlite_uc_color_timer', 'cleanlite_uc_color_overlay', 'cleanlite_uc_overlay_opacity', 'cleanlite_uc_timer_style', 'cleanlite_uc_countdown_enabled', 'cleanlite_uc_countdown_datetime', 'cleanlite_uc_label_days', 'cleanlite_uc_label_hours', 'cleanlite_uc_label_minutes', 'cleanlite_uc_label_seconds', 'cleanlite_uc_social_facebook', 'cleanlite_uc_social_twitter', 'cleanlite_uc_social_instagram', 'cleanlite_uc_status_code');

