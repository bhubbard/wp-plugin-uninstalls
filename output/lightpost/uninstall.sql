-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lightpost_api_key', 'lightpost_bible_class_registration_page_id', 'lightpost_directory_page_id', 'lightpost_directory_disclaimer', 'lightpost_sermon_archive_page_id', 'lightpost_theme');

