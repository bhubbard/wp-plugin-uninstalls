-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gg_options_flag', 'gg_open_post', 'gg_open_comment');

