-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adsensecode1', 'adsensecode2', 'adsensecode3', 'adsensecode4', 'adsensecode5', 'adsensecode6', 'adsensecode7');

