-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('areoi-version', 'areoi-dashboard-global-bootstrap-css', 'areoi-dashboard-global-bootstrap-js', 'areoi-lightspeed-plugins-nf-styles', 'ninja_forms_settings', 'areoi-bootstrap-version', 'areoi-theme-json-updated', 'areoi-layout-grid-grid-breakpoint-lg', 'areoi-lightspeed-company-name', 'areoi-lightspeed-company-address', 'areoi-lightspeed-company-phone', 'areoi-lightspeed-company-email', 'areoi-lightspeed-company-facebook', 'areoi-lightspeed-company-twitter', 'areoi-lightspeed-company-instagram', 'areoi-lightspeed-company-linkedin', 'areoi-lightspeed-company-tiktok', 'areoi-lightspeed-company-pinterest', 'areoi-lightspeed-company-youtube', 'areoi-lightspeed-styles-strip-padding', 'areoi-lightspeed-styles-strip-pattern', 'areoi-lightspeed-styles-strip-pattern-container', 'areoi-lightspeed-styles-grid-columns');

