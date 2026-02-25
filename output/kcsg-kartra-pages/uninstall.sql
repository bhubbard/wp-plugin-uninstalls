-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kcsg_kp_page_mode', 'kcsg_kp_gtmid', 'kcsg_kp_url', 'kcsg_kp_cache', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('kcsg_kp_page_mode', 'kcsg_kp_gtmid', 'kcsg_kp_url', 'kcsg_kp_cache', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('kcsg_kp_page_mode', 'kcsg_kp_gtmid', 'kcsg_kp_url', 'kcsg_kp_cache', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kcsg_kp_page_mode', 'kcsg_kp_gtmid', 'kcsg_kp_url', 'kcsg_kp_cache', '_wp_page_template');

