-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maildesigner365-subscription-form-api-key', 'maildesigner365-subscription-form-api-secret', 'maildesigner365-subscription-form-forms', 'maildesigner365-subscription-form-form');

