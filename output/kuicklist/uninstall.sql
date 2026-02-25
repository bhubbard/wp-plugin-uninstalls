-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_kuick_list_api_key', '_kuicklist_api_key', '_kuicklist_checklists_data');
DELETE FROM wp_options WHERE option_name LIKE '_kuicklist_checklist_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kuick_list_checklist_id', '_kuicklist_no_optin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kuick_list_checklist_id', '_kuicklist_no_optin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kuick_list_checklist_id', '_kuicklist_no_optin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kuick_list_checklist_id', '_kuicklist_no_optin');

