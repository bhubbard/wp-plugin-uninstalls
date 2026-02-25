-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uploadgenesislogo', 'floatgenesislogo', 'centergenesislogo', 'widthgenesislogo', 'heightgenesislogo');

