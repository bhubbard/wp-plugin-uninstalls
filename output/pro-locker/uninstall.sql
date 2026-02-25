-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%pro_key_client_ip_address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%pro_key_client_ip_address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%pro_key_client_ip_address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pro_key_client_ip_address';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%pro_key_ip_ids';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%pro_key_ip_ids';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%pro_key_ip_ids';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pro_key_ip_ids';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%pro_key_hit_count';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%pro_key_hit_count';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%pro_key_hit_count';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pro_key_hit_count';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%pro_key_post_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%pro_key_post_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%pro_key_post_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pro_key_post_id';

