-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('starpay_giveaway_rate', 'starpay_tax_rate', 'starpay_locked_days', 'starpayOrderId');
DELETE FROM wp_usermeta WHERE meta_key IN ('starpay_giveaway_rate', 'starpay_tax_rate', 'starpay_locked_days', 'starpayOrderId');
DELETE FROM wp_termmeta WHERE meta_key IN ('starpay_giveaway_rate', 'starpay_tax_rate', 'starpay_locked_days', 'starpayOrderId');
DELETE FROM wp_commentmeta WHERE meta_key IN ('starpay_giveaway_rate', 'starpay_tax_rate', 'starpay_locked_days', 'starpayOrderId');

