-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_cw_api_token', 'post_cw_roomid', 'post_send_cwr_expert', 'post_send_cwr_messege');

