-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kktt-animated-bar', 'kktt-bar-head', 'kktt-back-color', 'kktt-font-color', 'kktt-transp');

