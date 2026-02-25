-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('likecoin_plugin_version', 'likecoin_welcome_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lc_likecoin_user', 'lc_likecoin_id', 'lc_widget_option', 'lc_widget_position', 'lc_likecoin_wallet');
DELETE FROM wp_usermeta WHERE meta_key IN ('lc_likecoin_user', 'lc_likecoin_id', 'lc_widget_option', 'lc_widget_position', 'lc_likecoin_wallet');
DELETE FROM wp_termmeta WHERE meta_key IN ('lc_likecoin_user', 'lc_likecoin_id', 'lc_widget_option', 'lc_widget_position', 'lc_likecoin_wallet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lc_likecoin_user', 'lc_likecoin_id', 'lc_widget_option', 'lc_widget_position', 'lc_likecoin_wallet');

