-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dezo-ganalytics-id', 'dezo-custom-header', 'dezo-custom-footer', 'dezo-hide-wp-header-details', 'dezo-disable-emojis', 'dezo-enable-html-minify', 'dezo-enable-lightbox');

