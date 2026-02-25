-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whatsform_url', 'whatsform_page_title', 'whatsform_path', 'whatsform_url_input', 'whatsform_page_title_input', 'whatsform_path_input', 'whatsform_widget_snippet', 'whatsform_widget_show_on');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_whatsform_inpost_snippet', 'whatsform_getting_started_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_whatsform_inpost_snippet', 'whatsform_getting_started_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_whatsform_inpost_snippet', 'whatsform_getting_started_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_whatsform_inpost_snippet', 'whatsform_getting_started_notice');

