-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weforms_settings', 'wp-human-presence', '_weforms_aff_ref', 'weforms_review_notice_dismiss', 'weforms_installed', 'wpuf_general', 'weforms_version', 'weforms_activation_redirect', 'weforms_prevent_tracker_notice');
DELETE FROM wp_options WHERE option_name LIKE 'weforms_dismiss_xnotice_%';
DELETE FROM wp_options WHERE option_name LIKE 'weforms_imported_xforms_%';
DELETE FROM wp_options WHERE option_name LIKE 'nf_form_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpuf_form_settings', 'notifications', 'integrations', '_weforms_version', 'attachment_form_id', '_wpuf_delete_token', '_weforms_view_count', 'wef_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpuf_form_settings', 'notifications', 'integrations', '_weforms_version', 'attachment_form_id', '_wpuf_delete_token', '_weforms_view_count', 'wef_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpuf_form_settings', 'notifications', 'integrations', '_weforms_version', 'attachment_form_id', '_wpuf_delete_token', '_weforms_view_count', 'wef_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpuf_form_settings', 'notifications', 'integrations', '_weforms_version', 'attachment_form_id', '_wpuf_delete_token', '_weforms_view_count', 'wef_form_id');

