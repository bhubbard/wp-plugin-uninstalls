-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpnhtp_post_category', 'wpnhtp_effect', 'wpnhtp_number_post', 'wpnhtp_order', 'wpnhtp_border_radius', 'wpnhtp_label', 'wpnhtp_label_color', 'wpnhtp_bg_color', 'wpnhtp_text_color', 'wpnhtp_hover_color', 'wpnhtp_plugin_do_activation_redirect');

