-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jbid_ss_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jbid_ssearchify_data', 'jbid_ssearchify_sc', 'jbid_ssearchify_atts');
DELETE FROM wp_usermeta WHERE meta_key IN ('jbid_ssearchify_data', 'jbid_ssearchify_sc', 'jbid_ssearchify_atts');
DELETE FROM wp_termmeta WHERE meta_key IN ('jbid_ssearchify_data', 'jbid_ssearchify_sc', 'jbid_ssearchify_atts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jbid_ssearchify_data', 'jbid_ssearchify_sc', 'jbid_ssearchify_atts');

