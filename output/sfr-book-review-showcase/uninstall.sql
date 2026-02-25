-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfrbrs_delete_data_on_uninstall', 'sfrbrs_activation_date', 'sfrbrs_schema_version', 'sfrbrs_settings', 'sfrbrs_review_view_stats', 'sfrbrs_review_click_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sfrbrs_pro_notice_dismissed_permanent', 'sfrbrs_pro_notice_dismissed_until');
DELETE FROM wp_usermeta WHERE meta_key IN ('sfrbrs_pro_notice_dismissed_permanent', 'sfrbrs_pro_notice_dismissed_until');
DELETE FROM wp_termmeta WHERE meta_key IN ('sfrbrs_pro_notice_dismissed_permanent', 'sfrbrs_pro_notice_dismissed_until');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sfrbrs_pro_notice_dismissed_permanent', 'sfrbrs_pro_notice_dismissed_until');

