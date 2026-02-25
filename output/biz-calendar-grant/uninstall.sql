-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('biz_calendar_grant');
DELETE FROM wp_options WHERE option_name LIKE '%user_roles';

