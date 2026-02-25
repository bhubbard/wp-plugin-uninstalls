-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ogf_dismiss_guide', 'fp-typekit-data', 'downloaded_font_files', 'fp-typekit', 'ogf_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%';
DELETE FROM wp_options WHERE option_name LIKE 'ogf_external_font_css_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'metaboxhidden_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'metaboxhidden_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'metaboxhidden_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'metaboxhidden_%';

