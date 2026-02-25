-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('void_wb_pro_notice', 'void_wbwhmcse_elementor_activation_time', 'void_wbwhmcse_spare_me');

