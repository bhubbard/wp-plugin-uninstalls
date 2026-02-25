-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anp_color_back_num', 'anp_color_lett', 'anp_color_text_num');

