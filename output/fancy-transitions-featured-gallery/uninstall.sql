-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ftfeatured-width', 'ftfeatured-navigationno', 'ftfeatured-category', 'ftfeatured-items', 'ftfeatured-image', 'ftfeatured-text', 'ftfeatured-effect', 'ftfeatured-stripes', 'ftfeatured-height', 'ftfeatured-delay', 'ftfeatured-navigation');

