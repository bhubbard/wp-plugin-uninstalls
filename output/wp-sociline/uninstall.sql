-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsociline_fonts', 'wpsociline_popupbox_height', 'wpsociline_popupbox_border', 'wpsociline_popupbox_bordercolor', 'wpsociline_popupbox_borderradius', 'wpsociline_popupbox_icon', 'wpsociline_notification_icon_bgcolor', 'wpsociline_popupbox_rightoffset', 'wpsociline_boxshadow_offset', 'wpsociline_blurradius', 'wpsociline_spreadraius', 'wpsociline_boxshadow_color', 'wpsociline_popup_state', 'wpsociline_userid');
DELETE FROM wp_options WHERE option_name LIKE '%_licensed';

