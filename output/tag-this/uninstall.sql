-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tt_secret', 'tt_display', 'tt_spamstrength', 'tt_customcss', 'tt_displaytags', 'tt_manualmod', 'tt_nfrontpage');

