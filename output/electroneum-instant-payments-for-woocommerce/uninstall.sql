-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('payment_post_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('etn_ips_payment_id', 'etn_ips_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('etn_ips_payment_id', 'etn_ips_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('etn_ips_payment_id', 'etn_ips_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('etn_ips_payment_id', 'etn_ips_amount');

