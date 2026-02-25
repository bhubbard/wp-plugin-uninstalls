-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsecure_uno', 'wpsecure_due', 'wpsecure_tre', 'wpsecure_quattro', 'wpsecure_cinque', 'wpsecure_sei', 'wpsecure_sette', 'apgnsm_n_otto', 'apgnsm_n_nove', 'wpsecure_otto', 'wpsecure_nove');

