-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dn_footer_contacts-fields', 'dn_footer_contacts-last_id', 'dn_footer_contacts-invitation', 'dn_footer_contacts-settings', 'dn_footer_contacts-stats');

