-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eazy-ad-unblocker-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eazy_ad_unblocker_per_page_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('eazy_ad_unblocker_per_page_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('eazy_ad_unblocker_per_page_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eazy_ad_unblocker_per_page_disabled');

