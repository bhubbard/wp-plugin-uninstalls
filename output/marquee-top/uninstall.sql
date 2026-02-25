-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssmt_marquee_text', 'ssmt_marquee_speed', 'ssmt_marquee_url', 'ssmt_marquee_bg_color', 'ssmt_span_color');

