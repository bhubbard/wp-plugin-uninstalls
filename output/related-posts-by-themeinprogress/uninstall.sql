-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tiprp_settings', 'woocommerce_shop_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tiprp_dismissed_notice_userid_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tiprp_dismissed_notice_userid_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tiprp_dismissed_notice_userid_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tiprp_dismissed_notice_userid_%';

