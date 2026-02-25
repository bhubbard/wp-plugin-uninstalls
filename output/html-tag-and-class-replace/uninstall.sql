-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('html_class_replace', 'html_tag_replace', 'html_tag_replace_migration', 'html_old_class', 'html_new_class', 'html_old_tag', 'html_new_tag');

