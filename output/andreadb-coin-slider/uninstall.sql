-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dba_coin_slider_slides', 'dba_coin_slider_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('dba_coin_slider_slides', 'dba_coin_slider_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('dba_coin_slider_slides', 'dba_coin_slider_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dba_coin_slider_slides', 'dba_coin_slider_settings');

