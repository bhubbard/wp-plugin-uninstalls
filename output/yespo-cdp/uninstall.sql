-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yespo_options', 'woocommerce_db_sync_enabled', 'yespo-version', 'yespo_user_event_triggered', 'yespo_add_to_cart_event_triggered', 'yespo_update_cart_event_triggered');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';
DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale');

