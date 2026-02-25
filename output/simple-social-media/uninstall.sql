-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('facebook', 'twitter', 'instagram', 'tumblr', 'youtube', 'linkedin', 'pinterest', 'vine', 'googleplus', 'xing', 'github', 'flickr', 'digg', 'dribbble', 'icon_color');

