-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vi_wbe_full_screen_option', 'vi_wbe_product_meta_fields', 'vi_wbe_settings', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vi_wbe_product_column_width', '_children', 'vi_wbe_product_meta_fields', 'vi_wbe_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('vi_wbe_product_column_width', '_children', 'vi_wbe_product_meta_fields', 'vi_wbe_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('vi_wbe_product_column_width', '_children', 'vi_wbe_product_meta_fields', 'vi_wbe_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vi_wbe_product_column_width', '_children', 'vi_wbe_product_meta_fields', 'vi_wbe_settings');

