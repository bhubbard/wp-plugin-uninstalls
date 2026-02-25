-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPLINKS-nofollow', 'WPLINKS-comments', 'WPLINKS-excerpt', 'WPLINKS-title', 'WPLINKS-external-image', 'WPLINKS-open', 'WPLINKS-image', 'WPLINKS-whitelist', 'WPLINKS-title-shortcode');

