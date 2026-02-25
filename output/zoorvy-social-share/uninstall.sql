-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zoorvy-social-share-facebook', 'zoorvy-social-share-twitter', 'zoorvy-social-share-linkedin', 'zoorvy-social-share-reddit', 'zoorvy-social-share-gplus', 'zoorvy-social-share-pocket', 'zoorvy-social-share-top', 'zoorvy-social-share-bottom', 'zoorvy-social-share-page');

