-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jennystudio_identicons_color_bg', 'jennystudio_identicons_color_font');

