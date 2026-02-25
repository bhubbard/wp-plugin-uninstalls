-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shootq-api-key', 'shootq-brand-abbreviation', 'shootq-aus-dates');

