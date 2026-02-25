-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('improvedexternalproducts_sections', 'woocommerce-improved-external-products', 'iepp_do_activation_redirect', 'wpo_iepp_pro_notice_dismissed', 'iepp_go_pro_notice', 'wpo_iepp_pro_notice_shown');

