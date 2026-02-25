-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bstcmfw-xmlrpc', 'bstcmfw-pingbacks', 'bstcmfw-atom', 'bstcmfw-emojis', 'bstcmfw-manifest', 'bstcmfw-comments', 'bstcmfw-widgets', 'bstcmfw-tags', 'bstcmfw-posts', 'bstcmfw-links', 'bstcmfw-dashboard', 'bstcmfw-themeeditor', 'bstcmfw-cleanadminbar', 'bstcmfw-updatenotifications', 'bstcmfw-optimizequery', 'bstcmfw-gfbuttons', 'bstcmfw-gferrors', 'bstcmfw-disableadminbar', 'bstcmfw-adddefer', 'bstcmfw-removeversion', 'bstcmfw-jigsaw', 'bstcmfw-thumbnails', 'bstcmfw-imagecompression', 'bstcmfw-woocommerce', 'bstcmfw-googleapikey', 'bstcmfw-footertext', 'bstcmfw-serverstats', 'bstcmfw-gform-hide-ip', 'bstcmfw-cookie-enable', 'bstcmfw-cookie-wrapper-color', 'bstcmfw-cookie-accept-button-color', 'bstcmfw-cookie-decline-button-color', 'bstcmfw-cookie-text-font-color', 'bstcmfw-cookie-button-font-color', 'bstcmfw-cookie-exdays', 'bstcmfw-cookie-location-setting', 'bstcmfw-gform-remove-submission', 'database_version', 'bstcmfw-gform-iframe-background-color', 'bstcmfw-gform-iframe-text-color', 'bstcmfw-company');
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-read-more-link_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-text_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-accept-button-text_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-decline-button-text_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-read-more-button-text_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-header-accept-scripts_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-footer-accept-scripts_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-header-decline-scripts_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-cookie-footer-decline-scripts_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-gform-iframe-text_%';
DELETE FROM wp_options WHERE option_name LIKE 'bstcmfw-gform-iframe-button-text_%';

