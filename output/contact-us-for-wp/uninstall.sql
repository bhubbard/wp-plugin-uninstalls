-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contactuswp_form_options', 'contactuswp_icon_direction', 'contactuswp_icon_shape', 'contactuswp_icon_color', 'contactuswp_form_labels', 'contactuswp_send_to_email');

