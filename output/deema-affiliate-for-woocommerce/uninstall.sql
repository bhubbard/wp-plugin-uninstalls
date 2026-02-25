-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advertiser_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('deema_affiliate_commission_group_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('deema_affiliate_commission_group_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('deema_affiliate_commission_group_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('deema_affiliate_commission_group_key');

