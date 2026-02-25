-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('k-brb-field-on', 'k-brb-field-who', 'k-brb-field-logo', 'k-brb-field-title', 'k-brb-field-text', 'k-brb-field-facebook', 'k-brb-field-github', 'k-brb-field-googleplus', 'k-brb-field-instagram', 'k-brb-field-linkedin', 'k-brb-field-twitter', 'k-brb-field-youtube', 'k-brb-field-icons-style', 'k-brb-field-background-color', 'k-brb-field-border-color', 'k-brb-field-title-color', 'k-brb-field-text-color', 'k-brb-field-link-color', 'k-brb-field-head', 'k-brb-field-body');
DELETE FROM wp_options WHERE option_name LIKE 'k-brb-field-%';

