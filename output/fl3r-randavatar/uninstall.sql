-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('randavatarX', 'widget_randavatarx_recent_comments');

