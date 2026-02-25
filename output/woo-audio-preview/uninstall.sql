-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_audio_preview_admin_welcome_options', 'woo_audio_preview_general_options', 'wcap_admin_errors', '_woo_audio_preview_is_new_install');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcap_audio', 'wcap_preview_attachment');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcap_audio', 'wcap_preview_attachment');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcap_audio', 'wcap_preview_attachment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcap_audio', 'wcap_preview_attachment');

