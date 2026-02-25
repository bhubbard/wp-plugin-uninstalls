-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitcategory_uid', 'twitcategory_password', 'twitcategory_category', 'twitcategory_message', 'twitcategory_db_version');

