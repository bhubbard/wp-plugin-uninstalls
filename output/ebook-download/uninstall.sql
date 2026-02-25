-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ebook_download_db_version', 'ebookdownload_lang_name', 'ebookdownload_lang_email', 'ebookdownload_lang_emailwrong', 'ebookdownload_lang_download', 'ebookdownload_lang_thankyou', 'ebookdownload_lang_downloadmessage', 'ebookdownload_lang_emailenterwrong', 'ebookdownload_lang_emailrequired', 'widget_ebook_download');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ebookdownloadurl');
DELETE FROM wp_usermeta WHERE meta_key IN ('ebookdownloadurl');
DELETE FROM wp_termmeta WHERE meta_key IN ('ebookdownloadurl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ebookdownloadurl');

