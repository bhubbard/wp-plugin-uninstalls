-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rswmpstyling_admin_notice_offer_27122022');
DELETE FROM wp_usermeta WHERE meta_key IN ('rswmpstyling_admin_notice_offer_27122022');
DELETE FROM wp_termmeta WHERE meta_key IN ('rswmpstyling_admin_notice_offer_27122022');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rswmpstyling_admin_notice_offer_27122022');

