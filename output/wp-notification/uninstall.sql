-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_notices_text', 'custom_notices_notification_type', 'custom_notices_hide', 'custom_notices_location', 'administrator_notices_text', 'administrator_notices_location', 'administrator_notices_notification_type', 'administrator_notices_hide', 'administrator_notices_admin_bar', 'editor_notices_text', 'editor_notices_location', 'editor_notices_notification_type', 'editor_notices_hide', 'editor_notices_admin_bar', 'author_notices_text', 'author_notices_location', 'author_notices_notification_type', 'author_notices_hide', 'author_notices_admin_bar', 'contributor_notices_text', 'contributor_notices_location', 'contributor_notices_notification_type', 'contributor_notices_hide', 'contributor_notices_admin_bar', 'subscriber_notices_text', 'subscriber_notices_location', 'subscriber_notices_notification_type', 'subscriber_notices_hide', 'subscriber_notices_admin_bar', 'custom_notices_login', 'custom_notices_admin_bar');
DELETE FROM wp_options WHERE option_name LIKE '%_notices_login';
DELETE FROM wp_options WHERE option_name LIKE '%_notices_text';
DELETE FROM wp_options WHERE option_name LIKE '%_notices_notification_type';
DELETE FROM wp_options WHERE option_name LIKE '%_notices_hide';
DELETE FROM wp_options WHERE option_name LIKE '%_notices_location';

