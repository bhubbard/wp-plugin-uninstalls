-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ublk_version', 'is_user_subscribed_cancled', 'is_user_subscribed', 'ub_delete_data', 'user_blocking_promo_time', 'ublk_is_optin', 'wp_user_roles', 'admin_url', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_block_day';
DELETE FROM wp_options WHERE option_name LIKE '%_block_msg_day';
DELETE FROM wp_options WHERE option_name LIKE '%_block_url_day';
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%_block_date';
DELETE FROM wp_options WHERE option_name LIKE '%_block_msg_date';
DELETE FROM wp_options WHERE option_name LIKE '%_block_url_date';
DELETE FROM wp_options WHERE option_name LIKE '%_block_msg_permenant';
DELETE FROM wp_options WHERE option_name LIKE '%_block_url_permenant';
DELETE FROM wp_options WHERE option_name LIKE '%_block_permenant';
DELETE FROM wp_options WHERE option_name LIKE '%_all';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('block_day', 'block_msg_day', 'block_url_day', 'block_date', 'block_msg_date', 'block_url_date', 'is_active', 'block_msg_permenant', 'block_url_permenant', 'ublk_list_by_time_per_page', 'ublk_list_by_date_per_page', 'ublk_list_by_permanent_per_page', 'ublk_list_by_alltypes_per_page', '$block_url_permenant', 'all', 'block_url_msg');
DELETE FROM wp_usermeta WHERE meta_key IN ('block_day', 'block_msg_day', 'block_url_day', 'block_date', 'block_msg_date', 'block_url_date', 'is_active', 'block_msg_permenant', 'block_url_permenant', 'ublk_list_by_time_per_page', 'ublk_list_by_date_per_page', 'ublk_list_by_permanent_per_page', 'ublk_list_by_alltypes_per_page', '$block_url_permenant', 'all', 'block_url_msg');
DELETE FROM wp_termmeta WHERE meta_key IN ('block_day', 'block_msg_day', 'block_url_day', 'block_date', 'block_msg_date', 'block_url_date', 'is_active', 'block_msg_permenant', 'block_url_permenant', 'ublk_list_by_time_per_page', 'ublk_list_by_date_per_page', 'ublk_list_by_permanent_per_page', 'ublk_list_by_alltypes_per_page', '$block_url_permenant', 'all', 'block_url_msg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('block_day', 'block_msg_day', 'block_url_day', 'block_date', 'block_msg_date', 'block_url_date', 'is_active', 'block_msg_permenant', 'block_url_permenant', 'ublk_list_by_time_per_page', 'ublk_list_by_date_per_page', 'ublk_list_by_permanent_per_page', 'ublk_list_by_alltypes_per_page', '$block_url_permenant', 'all', 'block_url_msg');

