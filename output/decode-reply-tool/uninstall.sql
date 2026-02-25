-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitter-username', 'adn-username', 'enable-reply-tool', 'display-above-posts', 'display-below-posts');

