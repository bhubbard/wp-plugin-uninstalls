-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awfs_no_jquery', 'awfs_no_css', 'awfs_hiddenfields', 'awfs_no_close', 'awfs_no_never_show', 'awfs_tagimage', 'awfs_tagline', 'awfs_no_name_field', 'awfs_def_name', 'awfs_def_email', 'awfs_def_submit', 'awfs_formstatstracking');

