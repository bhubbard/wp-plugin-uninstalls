-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsocial-enable-plugin', 'wpsocial-enable-post', 'wpsocial-enable-page', 'wpsocial-enable-home', 'wpsocial-message-selection', 'wpsocial-custom-message', 'wpsocial-positioning', 'wpsocial-alignment', 'wpsocial-facebook', 'wpsocial-twitter', 'wpsocial-google', 'wpsocial-linkedin', 'wpsocial-pinterest', 'wpsocial-skins');

