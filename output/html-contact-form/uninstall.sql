-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('HTML_CF_code', 'html_CF_Email', 'html_form_install_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('html_contact_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('html_contact_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('html_contact_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('html_contact_ignore_notice');

