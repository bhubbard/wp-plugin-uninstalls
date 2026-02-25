-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('heyday_set_meta_data', 'heyday_last_product_hash', 'heyday_merchant_feed_affid', 'heyday_merchant_feed_pass', 'heyday_merchant_feed_err', 'heyday_merchant_feed_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id');

