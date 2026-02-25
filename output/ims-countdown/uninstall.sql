-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imsc_timezone', 'ims_countdown_info', 'ims-countdown-default-status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('countdown_type', 'countdown_value', 'ds', 'hr', 'mn', 'sc', 'countdown_start', 'countdown_end', 'expire_action', 'redirect_url', 'theme', 'font_face', 'title_color', 'timer_color', 'timer_background', 'timer_border', 'hide_title', 'timer_border_range', 'days', 'hours', 'minutes', 'seconds');
DELETE FROM wp_usermeta WHERE meta_key IN ('countdown_type', 'countdown_value', 'ds', 'hr', 'mn', 'sc', 'countdown_start', 'countdown_end', 'expire_action', 'redirect_url', 'theme', 'font_face', 'title_color', 'timer_color', 'timer_background', 'timer_border', 'hide_title', 'timer_border_range', 'days', 'hours', 'minutes', 'seconds');
DELETE FROM wp_termmeta WHERE meta_key IN ('countdown_type', 'countdown_value', 'ds', 'hr', 'mn', 'sc', 'countdown_start', 'countdown_end', 'expire_action', 'redirect_url', 'theme', 'font_face', 'title_color', 'timer_color', 'timer_background', 'timer_border', 'hide_title', 'timer_border_range', 'days', 'hours', 'minutes', 'seconds');
DELETE FROM wp_commentmeta WHERE meta_key IN ('countdown_type', 'countdown_value', 'ds', 'hr', 'mn', 'sc', 'countdown_start', 'countdown_end', 'expire_action', 'redirect_url', 'theme', 'font_face', 'title_color', 'timer_color', 'timer_background', 'timer_border', 'hide_title', 'timer_border_range', 'days', 'hours', 'minutes', 'seconds');

