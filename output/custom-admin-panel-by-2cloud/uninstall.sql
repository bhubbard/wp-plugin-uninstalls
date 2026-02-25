-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom-new-window', 'custom-facebook', 'custom-twitter', 'custom-gplus', 'custom-linkedin', 'custom-pinterest', 'custom-android', 'custom-appstore', 'custom-rss', 'custom-tumblr', 'custom-yt', 'custom-vimeo', 'custom-instagram', 'custom-logo', 'custom-favicon', 'custom-css', 'custom-js', 'custom-enable-js', 'custom-enable-css');

