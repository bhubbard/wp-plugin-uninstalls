-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agenda_category', 'widget_agenda_lista');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_all_day');
DELETE FROM wp_usermeta WHERE meta_key IN ('_all_day');
DELETE FROM wp_termmeta WHERE meta_key IN ('_all_day');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_all_day');

