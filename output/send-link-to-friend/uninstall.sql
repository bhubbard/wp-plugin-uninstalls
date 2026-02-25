-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gSendtofriend_fromname', 'gSendtofriend_fromemail', 'gSendtofriend_mailcontent', 'gSendtofriend_subject', 'gSendtofriend_On_Homepage', 'gSendtofriend_On_Posts', 'gSendtofriend_On_Pages', 'gSendtofriend_captcha', 'gSendtofriend_captcha_secret', 'gSendtofriend_captcha_sitekey', 'gSendtofriend_message', 'gSendtofriend_On_Archives', 'gSendtofriend_On_Search', 'gSendtofriend_title', 'gSendtofriend_title_sm', 'gSendtofriend_homeurl');

