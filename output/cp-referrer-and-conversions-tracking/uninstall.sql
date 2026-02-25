-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpreftrack_addons_active_list', 'cp_cpreftrack_rep_enable', 'cp_cpreftrack_rep_days', 'cp_cpreftrack_bocsvexclude', 'CP_APPB_CSV_CHARFIX');
DELETE FROM wp_options WHERE option_name LIKE 'cp_cpreftrack_last_sent_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cpreftrack_woocommerce_referrer');
DELETE FROM wp_usermeta WHERE meta_key IN ('cpreftrack_woocommerce_referrer');
DELETE FROM wp_termmeta WHERE meta_key IN ('cpreftrack_woocommerce_referrer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cpreftrack_woocommerce_referrer');

