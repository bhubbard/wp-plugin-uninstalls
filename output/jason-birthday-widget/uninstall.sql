-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('option1', 'option2', 'option3', 'jason_bd_db_version', 'jason_miembros_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bday_user', 'bday_show_to_others');
DELETE FROM wp_usermeta WHERE meta_key IN ('bday_user', 'bday_show_to_others');
DELETE FROM wp_termmeta WHERE meta_key IN ('bday_user', 'bday_show_to_others');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bday_user', 'bday_show_to_others');

