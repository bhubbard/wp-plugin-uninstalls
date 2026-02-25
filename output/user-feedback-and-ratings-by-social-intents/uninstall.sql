-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siuf_widgetID', 'user_nicename', 'siuf_tab_text', 'siuf_tab_color', 'siuf_tab_type', 'siuf_time_on_page', 'siuf_header_text', 'siuf_intro_text', 'siuf_rating_text', 'siuf_feedback_text');

