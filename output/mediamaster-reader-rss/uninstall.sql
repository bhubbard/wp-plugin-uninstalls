-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aRSS_animate_mode', 'aRSS_input_apikey', 'aRSS_input_pause', 'aRSS_social_user', 'aRSS_input_url', 'aRSS_source_media', 'aRSS_speed_animate', 'aRSS_target_link', 'aRSS_max_items', 'aRSS_date_visible', 'aRSS_input_paginate', 'headline_color', 'pub_date', 'title_feeds', 'background_box_color');

