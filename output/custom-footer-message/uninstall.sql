-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfmsg_footer_message', 'cfmsg_message_enabled', 'cfmsg_text_color', 'cfmsg_bg_color', 'cfmsg_font_family', 'cfmsg_font_size', 'cfmsg_text_align');

