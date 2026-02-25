-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popup_on_click_enable_bootstrap', 'popup_on_click_content_shortcode', 'popup_on_click_enable_animation', 'popup_on_click_popup_title');
DELETE FROM wp_options WHERE option_name LIKE '%_content_shortcode';
DELETE FROM wp_options WHERE option_name LIKE '%_popup_title';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_bootstrap';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_animation';

