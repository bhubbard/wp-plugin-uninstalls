-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('activearrow', 'btnstyle', 'custom_arrowbtn', 'btnpos', 'btnresp', 'btnhot', 'btnanimate');

