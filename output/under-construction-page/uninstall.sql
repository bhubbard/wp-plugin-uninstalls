-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('set_size', 'set_tweet', 'set_fb', 'set_font', 'set_msg', 'set_opt', 'set_admin');

