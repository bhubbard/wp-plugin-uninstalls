-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('audio_envelope_plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ae_activate_player', '_wp_attachment_image_alt', '_ae_deactivate_player');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ae_activate_player', '_wp_attachment_image_alt', '_ae_deactivate_player');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ae_activate_player', '_wp_attachment_image_alt', '_ae_deactivate_player');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ae_activate_player', '_wp_attachment_image_alt', '_ae_deactivate_player');

