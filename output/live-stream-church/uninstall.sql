-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('livestreamchurch_page_live_id', 'livestreamchurch-channelid', 'livestreamchurch-offlinevideo', 'livestreamchurch-logoimage', 'livestreamchurch-logoimageprofile', 'livestreamchurch-videotitle', 'livestreamchurch-descriptiontext', 'livestreamchurch-offeringlink');

