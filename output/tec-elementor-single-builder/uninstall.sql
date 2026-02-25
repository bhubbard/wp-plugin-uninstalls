-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tec_esb_options', 'elementor_container_width', 'elementor_cpt_support');
DELETE FROM wp_options WHERE option_name LIKE '%-version';

