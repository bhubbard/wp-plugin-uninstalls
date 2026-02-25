-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jc_shoplist', 'jc_2p_uc', 'jc_bc', 'jc_color', 'jc_nproducts', 'jc_mwidth', 'jc_2p_user', 'jc_2p_password', 'nproducts', 'mwidth');

