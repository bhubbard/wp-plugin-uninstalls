-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget-LJRandomOrRecent-titlerandom', 'widget-LJRandomOrRecent-titlerecent', 'widget-LJRandomOrRecent-post', 'widget-LJRandomOrRecent-page', 'widget-LJRandomOrRecent-category', 'widget-LJRandomOrRecent-tag', 'widget-LJRandomOrRecent-default', 'widget-LJRandomOrRecent-numposts');

