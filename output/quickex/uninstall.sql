-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickex_api_key', 'quickex_theme', 'quickex_main_url', 'quickex_how_it_works_url', 'quickex_terms_of_use_url', 'quickex_privacy_policy_url', 'quickex_theme_color', 'quickex_theme_text_color', 'quickex_show_header', 'quickex_show_footer', 'quickex_show_refund_address');

