-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('church_social_api_key', 'church_social_calendar_page_id', 'church_social_sermon_archive_page_id', 'church_social_theme', 'church_social_sermon_copyright_notice');

