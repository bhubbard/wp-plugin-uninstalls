-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('b4y_plugin_setting_adresse', 'b4y_plugin_setting_prod', 'b4y_plugin_setting_adresse_longitude', 'b4y_plugin_setting_adresse_latitude', 'b4y_plugin_setting_texte', 'b4y_plugin_setting_aide', 'b4y_plugin_setting_comm', 'b4y_plugin_setting_key', 'b4y_plugin_setting_cats', 'b4y_plugin_setting_sender_name', 'b4y_plugin_setting_sender_phone');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('b4y_send');
DELETE FROM wp_usermeta WHERE meta_key IN ('b4y_send');
DELETE FROM wp_termmeta WHERE meta_key IN ('b4y_send');
DELETE FROM wp_commentmeta WHERE meta_key IN ('b4y_send');

