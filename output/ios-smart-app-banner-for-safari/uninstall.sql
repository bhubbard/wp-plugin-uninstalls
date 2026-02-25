-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_carpe_ios_app_id', '_carpe_affiliate_param', '_carpe_affiliate_campaign', '_carpe_app_argument');
DELETE FROM wp_usermeta WHERE meta_key IN ('_carpe_ios_app_id', '_carpe_affiliate_param', '_carpe_affiliate_campaign', '_carpe_app_argument');
DELETE FROM wp_termmeta WHERE meta_key IN ('_carpe_ios_app_id', '_carpe_affiliate_param', '_carpe_affiliate_campaign', '_carpe_app_argument');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_carpe_ios_app_id', '_carpe_affiliate_param', '_carpe_affiliate_campaign', '_carpe_app_argument');

