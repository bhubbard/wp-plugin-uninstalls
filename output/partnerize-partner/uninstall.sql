-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_partnerize_partner_auth_table', '_partnerize_partner_participation_table', '_partnerize_partner_version');

