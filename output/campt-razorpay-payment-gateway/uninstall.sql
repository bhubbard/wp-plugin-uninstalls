-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tix_phone', 'tix_receipt_id', 'tix_first_name', 'tix_last_name', 'tix_email', 'tix_discount_percent', 'tix_discount_price', 'tix_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('tix_phone', 'tix_receipt_id', 'tix_first_name', 'tix_last_name', 'tix_email', 'tix_discount_percent', 'tix_discount_price', 'tix_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('tix_phone', 'tix_receipt_id', 'tix_first_name', 'tix_last_name', 'tix_email', 'tix_discount_percent', 'tix_discount_price', 'tix_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tix_phone', 'tix_receipt_id', 'tix_first_name', 'tix_last_name', 'tix_email', 'tix_discount_percent', 'tix_discount_price', 'tix_price');

