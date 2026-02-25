-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ruvuv-customcss', 'ruvuv-background-color-changing', 'ruvuv-sticky', 'ruvuv-tooltip', 'ruvuv-schedule', 'ruvuv-particle', 'ruvuv-image-moving', 'ruvuv-media-slider', 'ruvuv-relax-parallax', 'ruvuv-column-order', 'ruvuv-heading', 'ruvuv-section-link', 'ruvuv-max-width');
DELETE FROM wp_options WHERE option_name LIKE 'ruvuv-%';

