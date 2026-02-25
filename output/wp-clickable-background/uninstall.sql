-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-clickable-background-active', 'wp-clickable-background-javascript', 'wp-clickable-background-class', 'wp-clickable-background-link', 'wp-clickable-background-new', 'wp-clickable-background-form-message');

