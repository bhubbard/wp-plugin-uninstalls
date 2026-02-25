-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('drgf_do_activation_redirect', 'drgf_fonts_check_result', 'drgf_fonts_check_time', 'dismissed-drgf-welcome', 'fusion_options', 'drgf_captured_html');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%';

