-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aplpb_option_checkbox_page', 'aplpb_option_checkbox_post', 'aplpb_option_checkbox_custom', 'aplpb_option_theme', 'aplpb_option_color', 'aplpb_option_query_desktop', 'aplpb_option_query_tablet', 'aplpb_option_query_mobile');

