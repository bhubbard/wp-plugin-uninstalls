-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zippydownbutt', 'zippyvol', 'zippyauto', 'zippywidth', 'zippytext', 'zippyback', 'zippyplay', 'zippywave', 'zippyborder');

