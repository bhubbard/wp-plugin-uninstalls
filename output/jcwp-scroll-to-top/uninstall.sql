-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcorgstp_active', 'jcorgstp_duration', 'jcorgstp_scroleActivateAt', 'jcorgstp_scrollElementId', 'jcorgstp_easingType', 'jcorgstp_position', 'jcorgstp_scrollText', 'jcorgstp_backgroundColor', 'jcorgstp_foreColor', 'jcorgstp_fontFamily', 'jcorgstp_fontSize', 'jcorgstp_fontWeight', 'jcorgstp_textPadding', 'jcorgstp_zindex', 'jcorgstp_containerWidth', 'jcorgstp_containerBorder', 'jcorgstp_borderRadius', 'jcorgstp_disableon_tablet', 'jcorgstp_disableon_mobile', 'jcorgstp_callback', 'jcorgstp_linkback', 'jcorgstp_linkback_text');

