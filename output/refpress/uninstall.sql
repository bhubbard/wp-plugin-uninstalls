-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('refpress_settings', 'refpress_payout_settings', 'refpress_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('referer_account_id', 'referer_wp_user_id', '_edd_sl_is_renewal');
DELETE FROM wp_usermeta WHERE meta_key IN ('referer_account_id', 'referer_wp_user_id', '_edd_sl_is_renewal');
DELETE FROM wp_termmeta WHERE meta_key IN ('referer_account_id', 'referer_wp_user_id', '_edd_sl_is_renewal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('referer_account_id', 'referer_wp_user_id', '_edd_sl_is_renewal');

