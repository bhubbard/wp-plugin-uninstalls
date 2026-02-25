-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplf-translation-strings', 'wplf-form-filter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wplf_plugin_version', '_wplf_media_library', '_wplf_thank_you', '_wplf_fields', '_wplf_required', '_wplf_email_copy_enabled', '_wplf_email_copy_to', '_wplf_email_copy_from', '_wplf_email_copy_from_address', '_wplf_email_copy_subject', '_wplf_email_copy_content', '_wplf_title_format', 'referrer', '_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wplf_plugin_version', '_wplf_media_library', '_wplf_thank_you', '_wplf_fields', '_wplf_required', '_wplf_email_copy_enabled', '_wplf_email_copy_to', '_wplf_email_copy_from', '_wplf_email_copy_from_address', '_wplf_email_copy_subject', '_wplf_email_copy_content', '_wplf_title_format', 'referrer', '_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wplf_plugin_version', '_wplf_media_library', '_wplf_thank_you', '_wplf_fields', '_wplf_required', '_wplf_email_copy_enabled', '_wplf_email_copy_to', '_wplf_email_copy_from', '_wplf_email_copy_from_address', '_wplf_email_copy_subject', '_wplf_email_copy_content', '_wplf_title_format', 'referrer', '_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wplf_plugin_version', '_wplf_media_library', '_wplf_thank_you', '_wplf_fields', '_wplf_required', '_wplf_email_copy_enabled', '_wplf_email_copy_to', '_wplf_email_copy_from', '_wplf_email_copy_from_address', '_wplf_email_copy_subject', '_wplf_email_copy_content', '_wplf_title_format', 'referrer', '_form_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attachment';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attachment';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attachment';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attachment';

