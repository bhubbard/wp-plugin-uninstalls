-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp-location-id', 'sp-primary-background-color', 'sp-secondary-background-color', 'sp-tertiary-background-color', 'sp-font-family', 'sp-base-font-size', 'sp-item-casing', 'sp-primary-font-color', 'sp-secondary-font-color', 'sp-tertiary-font-color', 'sp-display-announcements', 'sp-display-photos', 'sp-display-currency-symbol', 'sp-display-price', 'sp-display-disclaimer', 'sp-attribution-image');

