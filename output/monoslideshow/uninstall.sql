-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('monoslideshow-preset', 'monoslideshow-width', 'monoslideshow-height', 'monoslideshow-resize');

