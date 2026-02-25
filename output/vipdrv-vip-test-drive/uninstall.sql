-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vipdrv-site-id', 'inject-widget-to-vlp', 'inject-widget-to-vdp');

