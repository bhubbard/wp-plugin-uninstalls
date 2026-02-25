-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apwebp_enable', 'apwebp_image_quality', 'apwebp_use_htaccess', 'apwebp_dont_conv_image_sizes');

