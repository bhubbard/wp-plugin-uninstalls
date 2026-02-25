-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmd-pages', 'cmd-posts', 'cmd-links', 'cmd-widgets', 'cmd-menu', 'cmd-users', 'cmd-media', 'cmd-comments', 'cmd-plugins', 'cmd-settings');

