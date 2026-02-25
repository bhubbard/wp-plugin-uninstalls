-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmodsar_searchAndReplaceOnPosttypes', 'cmodsar_allowed_terms_metabox_all_post_types', 'cmodsar_replacements', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('edit_custom_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('edit_custom_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('edit_custom_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('edit_custom_per_page');

