-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mamahack_fb_account', 'mamahack_tw_account', 'mamahack_tw_message ', 'mamahack_tw_message');

