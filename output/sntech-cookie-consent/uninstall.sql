-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sntc_banner_enabled', 'sntc_banner_style', 'sntc_banner_message', 'sntc_bg_color', 'sntc_text_color', 'sntc_link_color', 'sntc_accept_bg', 'sntc_accept_text', 'sntc_decline_bg', 'sntc_decline_text', 'sntc_privacy_url', 'sntc_install_time', 'sntc_review_dismissed', 'sntc_review_temp_dismiss');

