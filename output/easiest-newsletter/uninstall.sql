-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsletter_from_name', 'newsletter_from_email', 'newsletter_from_subject', 'newsletter');

