-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_coupon_affiliate_ID', '_coupon_affiliate_status', '_CCAFF_vendor_status', '_CCAFF_vendor_comm_pct', '_CCAFF_vendor_PPemail', '_CCAFF_vendor_notes', '_coupon_codes_CCAFF_Comm_Status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_coupon_affiliate_ID', '_coupon_affiliate_status', '_CCAFF_vendor_status', '_CCAFF_vendor_comm_pct', '_CCAFF_vendor_PPemail', '_CCAFF_vendor_notes', '_coupon_codes_CCAFF_Comm_Status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_coupon_affiliate_ID', '_coupon_affiliate_status', '_CCAFF_vendor_status', '_CCAFF_vendor_comm_pct', '_CCAFF_vendor_PPemail', '_CCAFF_vendor_notes', '_coupon_codes_CCAFF_Comm_Status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_coupon_affiliate_ID', '_coupon_affiliate_status', '_CCAFF_vendor_status', '_CCAFF_vendor_comm_pct', '_CCAFF_vendor_PPemail', '_CCAFF_vendor_notes', '_coupon_codes_CCAFF_Comm_Status');

