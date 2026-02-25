-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpdm_hide_all', '__wpdm_signup_roles', 'wpdm_gb_link_templates', 'wpdm_gb_post_templates', 'wpdm_gb_layouts');
DELETE FROM wp_options WHERE option_name LIKE 'wpdm_gb_categories_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('__wpdm_link_label', '__wpdm_pay_as_you_want', '__wpdm_download_count', '__wpdm_view_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('__wpdm_link_label', '__wpdm_pay_as_you_want', '__wpdm_download_count', '__wpdm_view_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('__wpdm_link_label', '__wpdm_pay_as_you_want', '__wpdm_download_count', '__wpdm_view_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('__wpdm_link_label', '__wpdm_pay_as_you_want', '__wpdm_download_count', '__wpdm_view_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE '__wpdm_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '__wpdm_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '__wpdm_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '__wpdm_%';

