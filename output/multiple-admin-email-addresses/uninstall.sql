-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adminhash', 'new_admin_email', 'multiple_admin_emails');

