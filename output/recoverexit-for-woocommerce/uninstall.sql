-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recexitexpmsg', 'disrecexitexpmsg', 're_lic_setting', 'RecoverExitFirstTimer', 'RE_Total_Counter', 'RE_conversion_Counter', 'RecoverExitSettings', 'recexitexp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'apply_before_tax', 'free_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'apply_before_tax', 'free_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'apply_before_tax', 'free_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'apply_before_tax', 'free_shipping');

