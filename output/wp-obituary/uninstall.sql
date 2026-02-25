-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_obituray_options', 'wpffo_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('obituary-layout', 'obituary-archive-template', 'wpffo_data', 'ff-first_name', 'ff-last_name', 'ff-date_of_birth', 'ff-date_of_death');
DELETE FROM wp_usermeta WHERE meta_key IN ('obituary-layout', 'obituary-archive-template', 'wpffo_data', 'ff-first_name', 'ff-last_name', 'ff-date_of_birth', 'ff-date_of_death');
DELETE FROM wp_termmeta WHERE meta_key IN ('obituary-layout', 'obituary-archive-template', 'wpffo_data', 'ff-first_name', 'ff-last_name', 'ff-date_of_birth', 'ff-date_of_death');
DELETE FROM wp_commentmeta WHERE meta_key IN ('obituary-layout', 'obituary-archive-template', 'wpffo_data', 'ff-first_name', 'ff-last_name', 'ff-date_of_birth', 'ff-date_of_death');

