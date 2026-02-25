-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dismissed-void-cf7-promotion-notice-ele-query-at', 'dismissed-void-cf7-promotion-notice-ele-query-never', 'void_cf7_elementor_activation_time', 'void_cf7_spare_me', 'void_cf7_with_elementor_ran_never', 'void_cf7_with_elementor_ran_time', 'void_cf7_with_elementor_ran', 'void_cf7_elep_2021_temporary', 'void_cf7_elep_2021_temporary_time', 'void_cf7_elep_2021_never', 'void_cf7_email_with_elementor_never', 'void_cf7_email_with_elementor', 'void_cf7_email_with_elementor_time');
DELETE FROM wp_options WHERE option_name LIKE '%-at';
DELETE FROM wp_options WHERE option_name LIKE '%-never';

