-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mnmwp-switch', 'mnmwp-first-back-color', 'mnmwp-first-back-color-hover', 'mnmwp-first-back-color-active', 'mnmwp-first-font-color', 'mnmwp-first-font-color-hover', 'mnmwp-first-font-color-active', 'mnmwp-second-back-color', 'mnmwp-second-back-color-hover', 'mnmwp-second-back-color-active', 'mnmwp-second-font-color', 'mnmwp-second-font-color-hover', 'mnmwp-second-font-color-active', 'mnmwp-rest-back-color', 'mnmwp-rest-back-color-hover', 'mnmwp-rest-back-color-active', 'mnmwp-rest-font-color', 'mnmwp-rest-font-color-hover', 'mnmwp-rest-font-color-active', 'mnmwp-menu-icon-color', 'mnmwp-menu-outer-width', 'mnmwp-menu-inner-width', 'mnmwp-mobile-menu-breakpoint', 'mnmwp-menu-shortcode');

