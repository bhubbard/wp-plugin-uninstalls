-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yapevents_available_views', 'yapevents_eventColor', 'yapevents_eventTextColor', 'yapevents_version', 'yapevents_theme', 'yapevents_theme_css', 'yapevents_limit', 'yapevents_limit_txt', 'yapevents_qtips', 'yapevents_qtips_style', 'yapevents_qtips_my', 'yapevents_qtips_at', 'yapevents_qtips_rounded', 'yapevents_qtips_image', 'yapevents_timeFormat', 'yapevents_defaultView', 'yapevents_weekends', 'yapevents_qtips_shadow', 'yapevents_venueShowTooltip', 'yapevents_venueShowImages', 'yapevents_venue_id');

