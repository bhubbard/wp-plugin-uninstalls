-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_posttoflarum_activated', '_posttoflarum_create_link', '_posttoflarum_forum_path', '_posttoflarum_token', '_posttoflarum_forum_id', '_posttoflarum_db_version');

