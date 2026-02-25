-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tua-forma-smtp-recipients', 'tua-forma-error-message', 'tua-forma-successful-message', 'tua-forma-metadata', 'tua-forma-subject', 'tua-forma-honeypot');

