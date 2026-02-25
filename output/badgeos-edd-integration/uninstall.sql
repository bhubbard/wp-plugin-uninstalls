-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bosedd_version', 'bosedd_options', 'badgeos_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bosedd_review_dismissed', '_badgeos_count', '_badgeos_edd_trigger', '_bosedd_download_for_review_id', '_bosedd_specific_download', '_bosedd_download_type', '_bosedd_download_price', '_bosedd_commission_price', '_bosedd_cart_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('bosedd_review_dismissed', '_badgeos_count', '_badgeos_edd_trigger', '_bosedd_download_for_review_id', '_bosedd_specific_download', '_bosedd_download_type', '_bosedd_download_price', '_bosedd_commission_price', '_bosedd_cart_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('bosedd_review_dismissed', '_badgeos_count', '_badgeos_edd_trigger', '_bosedd_download_for_review_id', '_bosedd_specific_download', '_bosedd_download_type', '_bosedd_download_price', '_bosedd_commission_price', '_bosedd_cart_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bosedd_review_dismissed', '_badgeos_count', '_badgeos_edd_trigger', '_bosedd_download_for_review_id', '_bosedd_specific_download', '_bosedd_download_type', '_bosedd_download_price', '_bosedd_commission_price', '_bosedd_cart_price');

