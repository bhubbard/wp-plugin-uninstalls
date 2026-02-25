-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('registrationnotification', 'fa_mne_version', 'famne_options', 'famne_network_managed');

