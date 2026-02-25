-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rh_hidedash_options', 'rh_hidedash_links_options', 'rh_insert_php');

