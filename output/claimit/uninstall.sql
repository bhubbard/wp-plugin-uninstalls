-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('claimit_google_webmaster', 'claimit_google_submit_button', 'claimit_bing_webmaster', 'claimit_yandex_webmaster', 'claimit_pinterest', 'claimit_weboftrust_webmaster', 'claimit_webutation_webmaster', 'claimit_header_section', 'claimit_body_section', 'claimit_footer_section');

