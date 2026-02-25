-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('RRB_TOKENS', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_update';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', 'action4json', 'rrbot_usr_promo');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', 'action4json', 'rrbot_usr_promo');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', 'action4json', 'rrbot_usr_promo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', 'action4json', 'rrbot_usr_promo');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';

