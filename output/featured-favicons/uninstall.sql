-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ff_use_as_default_image', 'ff_default_favicon_id', 'ff_favicon_as_apple_touch_icon');

