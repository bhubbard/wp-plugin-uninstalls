-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_lsx-to_settings', '_tour_operators_team_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('expert', 'accommodation_to_team', 'contact_number', 'contact_email', 'skype');
DELETE FROM wp_usermeta WHERE meta_key IN ('expert', 'accommodation_to_team', 'contact_number', 'contact_email', 'skype');
DELETE FROM wp_termmeta WHERE meta_key IN ('expert', 'accommodation_to_team', 'contact_number', 'contact_email', 'skype');
DELETE FROM wp_commentmeta WHERE meta_key IN ('expert', 'accommodation_to_team', 'contact_number', 'contact_email', 'skype');

