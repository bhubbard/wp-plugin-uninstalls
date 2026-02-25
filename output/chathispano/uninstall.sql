-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chathispano_webchat_nick', 'chathispano_webchat_realname', 'chathispano_webchat_chan', 'chathispano_webchat_autojoin', 'chathispano_webchat_theme', 'chathispano_webchat_layout', 'chathispano_webchat_height', 'chathispano_webchat_width');

