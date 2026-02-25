-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitteraccountbox_options', 'twitteraccountbox_transient');

