-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecmd_initial_save_version', 'ecmd_install_date', 'ecmd-v', 'ecmd-type', 'ecmd-installDate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_VenueState', '_VenueAddress');
DELETE FROM wp_usermeta WHERE meta_key IN ('_VenueState', '_VenueAddress');
DELETE FROM wp_termmeta WHERE meta_key IN ('_VenueState', '_VenueAddress');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_VenueState', '_VenueAddress');

