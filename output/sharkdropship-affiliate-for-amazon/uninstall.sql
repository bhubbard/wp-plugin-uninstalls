-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sharamaf_extension_notice_dismissed', '_price', 'product_views', 'productUrl', 'amazon_sharkdropship_extension_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('sharamaf_extension_notice_dismissed', '_price', 'product_views', 'productUrl', 'amazon_sharkdropship_extension_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('sharamaf_extension_notice_dismissed', '_price', 'product_views', 'productUrl', 'amazon_sharkdropship_extension_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sharamaf_extension_notice_dismissed', '_price', 'product_views', 'productUrl', 'amazon_sharkdropship_extension_notice_dismissed');

