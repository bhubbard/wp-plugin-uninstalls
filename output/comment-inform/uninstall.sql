-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comminform_namekey', 'comminform_emailkey', 'comminform_subject', 'comminform_message');

