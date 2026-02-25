-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_cmu_button_text', 'wp_cmu_button_text_copied', 'wp_cmu_button_color', 'wp_cmu_button_text_color', 'wp_cmu_link_text', 'wp_cmu_link_text_copied', 'wp_cmu_link_text_color');

