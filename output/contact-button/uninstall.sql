-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contact-button-id', 'contact-button-cb-verify-status', 'contact-button-cb-verify-curl-body', 'contact-button-cb-in-header');

