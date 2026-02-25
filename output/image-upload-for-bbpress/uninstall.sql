-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bbp_allow_anonymous', 'hm_bbpui_rd_notice_hidden', 'hm_bbpui_first_activate');
DELETE FROM wp_options WHERE option_name LIKE '%_first_activate';
DELETE FROM wp_options WHERE option_name LIKE '%_rd_notice_hidden';

