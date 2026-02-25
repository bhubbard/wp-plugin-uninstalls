-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'sutm_form_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sutm_link_history');
DELETE FROM wp_usermeta WHERE meta_key IN ('sutm_link_history');
DELETE FROM wp_termmeta WHERE meta_key IN ('sutm_link_history');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sutm_link_history');

