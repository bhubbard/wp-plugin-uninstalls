-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sb-title', 'sb-color', 'sb-position', 'sb-sharing', 'sb-effect', 'sb-share-facebook', 'sb-share-tweet', 'sb-share-pinterest', 'sb-share-linkedin', 'sb-share-gplus', 'sb-share-email');
DELETE FROM wp_options WHERE option_name LIKE 'sb-%';

