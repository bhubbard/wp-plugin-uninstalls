-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('romaniachat_nick', 'romaniachat_server', 'romaniachat_chan', 'romaniachat_style', 'romaniachat_height', 'romaniachat_width');

