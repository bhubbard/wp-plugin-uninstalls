-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dppmc_post', 'dppmc_page', 'dppmc_menu', 'dppmc_installationNewDate', 'ppmc_support_us_now_x', 'ppmc_next_period_ratings');
DELETE FROM wp_options WHERE option_name LIKE 'dppmc_%';
DELETE FROM wp_options WHERE option_name LIKE 'ppmc_remove_discount_notice_xmas_%';

