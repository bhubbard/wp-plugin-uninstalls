-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('livestream-channelname', 'livestream-noticemessage', 'livestream-twitchclientid');
DELETE FROM wp_options WHERE option_name LIKE '%-channelname';
DELETE FROM wp_options WHERE option_name LIKE '%-twitchclientid';
DELETE FROM wp_options WHERE option_name LIKE '%-noticemessage';

