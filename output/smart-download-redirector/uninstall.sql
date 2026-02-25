-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartdr_styles', 'smartdr_destination_styles', 'smartdr_rate_limit', 'smartdr_target_domains', 'smartdr_custom_heading', 'smartdr_manual_link_text', 'smartdr_show_title', 'smartdr_show_manual_link', 'smartdr_layout_style', 'smartdr_countdown_time', 'smartdr_redirect_delay', 'smartdr_shortcode_page', 'smartdr_show_destination', 'smartdr_destination_display_step', 'smartdr_manual_link_display_step');
DELETE FROM wp_options WHERE option_name LIKE 'smartdr_%';
DELETE FROM wp_options WHERE option_name LIKE 'smartdr_option_updated_%';

