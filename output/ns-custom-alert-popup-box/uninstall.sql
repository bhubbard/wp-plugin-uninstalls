-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns_wcapb_test_mode', 'ns_wcapb_text', 'ns_wcapb_delay', 'wt_wcapb_color_layer', 'wt_wcapb_opacity_layer', 'wt_wcapb_color_content', 'wt_wcapb_border_size', 'wt_wcapb_border_color', 'wt_wcapb_padding', 'ns_wcapb_test_mode_premium');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

