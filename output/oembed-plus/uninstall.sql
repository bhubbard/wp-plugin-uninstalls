-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oembed_facebook_app_id', 'oembed_facebook_app_secret');

