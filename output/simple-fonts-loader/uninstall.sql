-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple-fonts-loader-activated', 'simple-fonts-loader-favorites');

