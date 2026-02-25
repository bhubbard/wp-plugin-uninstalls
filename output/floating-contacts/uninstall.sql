-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('floating_contacts_options', 'floating_contacts_version', 'floating_contacts_install_date');

