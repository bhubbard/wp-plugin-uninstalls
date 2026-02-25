-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwext_show_when', 'jwext_livetime_cookie', 'jwext_popup_type', 'jwext_popup_onpages', 'jwext_popupanywhere_dbsession', 'jwext_popup_assignshow', 'jwext_custom_postype', 'jwext_custom_menu', 'jwext_image_id', 'jwext_content_popup', 'external_link', 'jwext_width', 'jwext_height', 'jwext_close_s', 'jwext_redirect_link');

