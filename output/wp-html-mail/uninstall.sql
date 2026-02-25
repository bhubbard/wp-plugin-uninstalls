-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('haet_mail_options', 'haet_mail_theme_options', 'haet_mail_plugin_options', 'wpsc_trackingid_subject', 'wpsp_advanced_settings', 'haet_mail_templates');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mailbuilder_css_desktop', 'mailbuilder_css_mobile', 'mailbuilder_attachments', 'subject', 'mailbuilder_json', 'mailbuilder_header_hidden', 'mailbuilder_footer_hidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('mailbuilder_css_desktop', 'mailbuilder_css_mobile', 'mailbuilder_attachments', 'subject', 'mailbuilder_json', 'mailbuilder_header_hidden', 'mailbuilder_footer_hidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('mailbuilder_css_desktop', 'mailbuilder_css_mobile', 'mailbuilder_attachments', 'subject', 'mailbuilder_json', 'mailbuilder_header_hidden', 'mailbuilder_footer_hidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mailbuilder_css_desktop', 'mailbuilder_css_mobile', 'mailbuilder_attachments', 'subject', 'mailbuilder_json', 'mailbuilder_header_hidden', 'mailbuilder_footer_hidden');

