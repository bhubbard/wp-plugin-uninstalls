-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apikey', 'oaframewidth', 'oaframeheight', 'img_oa', 'logo', 'fblogin', 'oalang', 'oaltype', 'oafstext', 'oafshtext', 'oafsctext', 'oaalign', 'oaalignb');

