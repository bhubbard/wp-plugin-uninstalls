-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fpsml_plugin_install_date', 'fpsml_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fpsml_hide_review_notice', '_fpsml_form_alias', 'fpsml_author_email', 'fpsml_author_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('fpsml_hide_review_notice', '_fpsml_form_alias', 'fpsml_author_email', 'fpsml_author_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('fpsml_hide_review_notice', '_fpsml_form_alias', 'fpsml_author_email', 'fpsml_author_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fpsml_hide_review_notice', '_fpsml_form_alias', 'fpsml_author_email', 'fpsml_author_name');

