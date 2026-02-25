-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wip_woocarousel_settings', 'woocommerce_shop_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wip_woocarousel-lite_dismissed_notice_usrid%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wip_woocarousel-lite_dismissed_notice_usrid%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wip_woocarousel-lite_dismissed_notice_usrid%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wip_woocarousel-lite_dismissed_notice_usrid%';

