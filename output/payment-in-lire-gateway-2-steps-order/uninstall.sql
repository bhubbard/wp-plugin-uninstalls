-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_inlire_show_phpver_notice', 'wc_inlire_show_wcver_notice', 'wc_inlire_show_curl_notice', 'wc_inlire_show_urlservice_notice', 'wc_inlire_show_token_notice', 'wc_inlire_show_maxamount_notice', 'woocommerce_inlire_settings', 'wc_inlire_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

