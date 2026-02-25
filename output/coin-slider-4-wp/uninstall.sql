-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cs-category', 'cs-items', 'cs-image', 'cs-text', 'cs-effect', 'cs-spw', 'cs-sph', 'cs-width', 'cs-height', 'cs-delay', 'cs-navigation');

