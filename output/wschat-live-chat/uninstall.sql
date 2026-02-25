-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wschat_activation_status', 'wschat_geo_ip_ttl', 'wschat-admin-pusher-notice-status', 'update_core', 'random_seed', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_unique_product_id';
DELETE FROM wp_options WHERE option_name LIKE '%_licence_key';
DELETE FROM wp_options WHERE option_name LIKE '%_instance_id';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wschat_online_status', 'wp_capabilities');
DELETE FROM wp_usermeta WHERE meta_key IN ('wschat_online_status', 'wp_capabilities');
DELETE FROM wp_termmeta WHERE meta_key IN ('wschat_online_status', 'wp_capabilities');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wschat_online_status', 'wp_capabilities');

