-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gssth_disable_gallery_style', 'gssth_override_gallery_style');

