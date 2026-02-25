-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('showtext_options', 'language_options', 'cmt_meta_version');

