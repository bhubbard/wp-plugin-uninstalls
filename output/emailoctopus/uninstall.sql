-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emailoctopus_api_key', 'emailoctopus_form_settings_saved_status', 'emailoctopus_api_refresh_status', 'emailoctopus_load_forms', 'emailoctopus_api_disconnect_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_emailoctopus_form_automatic_display', '_emailoctopus_form_id', '_emailoctopus_form_post_types');
DELETE FROM wp_usermeta WHERE meta_key IN ('_emailoctopus_form_automatic_display', '_emailoctopus_form_id', '_emailoctopus_form_post_types');
DELETE FROM wp_termmeta WHERE meta_key IN ('_emailoctopus_form_automatic_display', '_emailoctopus_form_id', '_emailoctopus_form_post_types');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_emailoctopus_form_automatic_display', '_emailoctopus_form_id', '_emailoctopus_form_post_types');

