-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disabled_pages_array', 'debug_mode', 'covid_banner_color', 'covid_banner_text_color', 'covid_banner_link_color', 'covid_banner_share', 'covid_banner_header_text', 'covid_banner_body_text', 'covid_banner_link_text', 'covid_banner_header_color', 'covid_banner_dismiss_color');

