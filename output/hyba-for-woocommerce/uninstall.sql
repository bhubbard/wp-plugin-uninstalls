-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocomerce_show_hyba_info', 'woocomerce_show_hyba_info_position');

