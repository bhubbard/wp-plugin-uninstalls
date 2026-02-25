-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('statmailer_options', 'visitormailer_options', 'STATMAILER_VERSION_KEY');

