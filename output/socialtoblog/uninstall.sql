-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snapblog_import_author_id', 'snapblog_base_url', 'snapblog_email_api', 'snapblog_password_api', 'snapblog_import_max_pages', 'snapblog_last_import_date', 'snapblog_import_partial');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('snapblog_category_id', '_snapblog_external_id', '_snapblog_author', '_snapblog_featured');
DELETE FROM wp_usermeta WHERE meta_key IN ('snapblog_category_id', '_snapblog_external_id', '_snapblog_author', '_snapblog_featured');
DELETE FROM wp_termmeta WHERE meta_key IN ('snapblog_category_id', '_snapblog_external_id', '_snapblog_author', '_snapblog_featured');
DELETE FROM wp_commentmeta WHERE meta_key IN ('snapblog_category_id', '_snapblog_external_id', '_snapblog_author', '_snapblog_featured');

