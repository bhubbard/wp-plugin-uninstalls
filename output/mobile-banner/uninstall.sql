-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobilebanner_bgcolour', 'mobilebanner_textcolour', 'mobilebanner_text', 'mobilebanner_url', 'mobilebanner_width', 'mobilebanner_height', 'mobilebanner_chkclose', 'mobilebanner_cookiedays', 'mobilebanner_chknewtab', 'mobilebanner_hiddenpages');

