-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cnss-social-profile-type', 'cnss-width', 'cnss-height', 'cnss-margin', 'cnss-row-count', 'cnss-vertical-horizontal', 'cnss-text-align', 'cnss-social-profile-links', 'cnss-icon-bg-color', 'cnss-icon-bg-hover-color', 'cnss-icon-color', 'cnss-icon-hover-color', 'cnss-icon-shape', 'cnss-original-icon-color', 'cnss-icon-name-show', 'cnss-icon-name-font-color', 'cnss-icon-name-font-size');

