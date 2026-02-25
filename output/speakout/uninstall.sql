-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dk_speakout_options', 'dk_speakout_pro_version', 'dk_speakout_version', 'dk_speakout_license_key_verified', 'dk_speakout_license_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mailerlite_form_hidden', 'SpeakOut_plugin_notice_ignore');
DELETE FROM wp_usermeta WHERE meta_key IN ('mailerlite_form_hidden', 'SpeakOut_plugin_notice_ignore');
DELETE FROM wp_termmeta WHERE meta_key IN ('mailerlite_form_hidden', 'SpeakOut_plugin_notice_ignore');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mailerlite_form_hidden', 'SpeakOut_plugin_notice_ignore');

