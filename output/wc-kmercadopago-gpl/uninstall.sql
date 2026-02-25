-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_gateway', 'kmercadopagogpl_ignore_review', 'kmercadopagogpl_installed_date');
DELETE FROM wp_options WHERE option_name LIKE '%test_user';
DELETE FROM wp_options WHERE option_name LIKE '%test_user_retry';
DELETE FROM wp_options WHERE option_name LIKE '%convertion_rate';

