-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jtdonmet_redirectPageData', 'jtdonmet_genOptions', 'jtdonmet_cstmOptions', 'jtdonmetplus_getValues');

