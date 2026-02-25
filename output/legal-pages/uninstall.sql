-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adl_lp_general', 'adl_lp_social', 'adl_lp_misc', 'adl_lp_accept_term', 'wplp_legal_page_discount', 'adl_lp_excludePage', 'adl_demo_inserted', 'adl_ccpa_demo_inserted', 'adl_lp_popup', 'adl_lp_cookie');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_adl_legal_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_adl_legal_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_adl_legal_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_adl_legal_page');

