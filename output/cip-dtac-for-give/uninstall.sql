-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dtac_give_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_give_payment_customer_id', '_dtac_give_access_to_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_give_payment_customer_id', '_dtac_give_access_to_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_give_payment_customer_id', '_dtac_give_access_to_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_give_payment_customer_id', '_dtac_give_access_to_content');

