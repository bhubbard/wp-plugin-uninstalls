-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppatr-links', 'wppatr-not-links', 'wppatr-page-selector', 'wppatr-remove-scroll-bar', 'wppatr-page', 'wppatr-overlay', 'wppatr-loader', 'wppatr-active-transitions');

