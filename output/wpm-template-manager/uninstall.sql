-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpm_template_manager_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpm_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpm_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpm_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpm_page_template');

