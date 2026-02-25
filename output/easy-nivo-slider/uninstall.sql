-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_nivo_slider_options', 'widget_nivo_slider_for_current_post', 'widget_easy_nivo_slider', 'widget_easy_nivo_slider_nextgen');

