-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('angie_external_scripts_consent', 'angie_sidebar_default_state', 'angie_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_angie_snippet_files');
DELETE FROM wp_usermeta WHERE meta_key IN ('_angie_snippet_files');
DELETE FROM wp_termmeta WHERE meta_key IN ('_angie_snippet_files');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_angie_snippet_files');

