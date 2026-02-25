-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dh_ptp_show_legacy_tables', 'dh_ptp_show_review_notice', 'links_updated_date_format');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('1_dh_ptp_settings', 'screen_layout_easy-pricing-table', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('1_dh_ptp_settings', 'screen_layout_easy-pricing-table', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('1_dh_ptp_settings', 'screen_layout_easy-pricing-table', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('1_dh_ptp_settings', 'screen_layout_easy-pricing-table', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields';

