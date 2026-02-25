-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faq_version', 'faq_pro_welcome_page_shown', 'faq_pro_welcome_page_shown_time', 'faq_allow_tracking', 'faq_ts_tracker_last_send', 'ts_reset_tracking', 'wcap_restrict_domain_address', 'active_TS_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_ts_tracker_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acf_open', '_acf_rtt', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acf_open', '_acf_rtt', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acf_open', '_acf_rtt', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acf_open', '_acf_rtt', '_wp_page_template');

