-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_inbound_organizer_columns', 'cf7_inbound_organizer_general');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_from_name', '_from_email', '_subject', '_cf7io_color', '_meta', '_cf7io_notes', '_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_from_name', '_from_email', '_subject', '_cf7io_color', '_meta', '_cf7io_notes', '_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_from_name', '_from_email', '_subject', '_cf7io_color', '_meta', '_cf7io_notes', '_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_from_name', '_from_email', '_subject', '_cf7io_color', '_meta', '_cf7io_notes', '_fields');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%';

