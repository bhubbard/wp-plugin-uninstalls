-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('archive_control_tax_category_options', 'archive_control_tax_post_tag_options', 'archive_control_db_current_version', 'archive_control_options');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_title';
DELETE FROM wp_options WHERE option_name LIKE '%_image';
DELETE FROM wp_options WHERE option_name LIKE '%_before';
DELETE FROM wp_options WHERE option_name LIKE '%_after';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('archive_control_term_image', 'archive_control_term_before', 'archive_control_term_after', 'archive_control_term_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('archive_control_term_image', 'archive_control_term_before', 'archive_control_term_after', 'archive_control_term_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('archive_control_term_image', 'archive_control_term_before', 'archive_control_term_after', 'archive_control_term_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('archive_control_term_image', 'archive_control_term_before', 'archive_control_term_after', 'archive_control_term_meta');

