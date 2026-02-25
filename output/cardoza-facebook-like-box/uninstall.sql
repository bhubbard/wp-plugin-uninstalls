-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfblb_stream', 'cfblb_header', 'cfblb_small_header', 'cfblb_show_faces', 'cfblb_fb_url', 'cfblb_title', 'cfpl_enable', 'cfblb_header_do_activation_redirect', 'cfblb_popup_enable_disable', 'cfblb_popup_title', 'cfblb_popup_fb_url', 'cfblb_popup_width', 'cfblb_popup_height', 'cfblb_popup_show_faces', 'cfblb_popup_stream', 'cfblb_popup_header', 'cfblb_popup_small_header', 'cfblb_popup_repeat_times', 'cfblb_fb_border_color', 'cfblb_width', 'cfblb_height', 'cfblb_events', 'cfblb_message', 'cfblb_videos', 'cfblb_lang', 'cfblb_popup_lang', 'cfblb_popup_show_on_home', 'cfblb_popup_show_on_logged_in', 'cfblb_popup_show_on_not_logged_in', 'cfpl_show_button', 'cfpl_layout', 'cfpl_show_faces', 'cfpl_verb', 'cffb_popup_cookie');

