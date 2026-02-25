-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('breadcrumb_text', 'bdc_txt_color', 'bread_col', 'act_col', 'home_title', 'theme');

