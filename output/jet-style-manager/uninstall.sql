-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jet_sm_google_fonts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jet_sm_is_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jet_sm_is_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jet_sm_is_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jet_sm_is_processed');

