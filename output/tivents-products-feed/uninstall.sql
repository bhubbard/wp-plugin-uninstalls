-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tivents_partner_id', 'tivents_primary_color', 'tivents_secondary_color', 'tivents_text_color');

