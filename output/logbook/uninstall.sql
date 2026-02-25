-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logbook-scheduled-event', 'logbook-tmp-token', 'logbook-api-token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_logbook', '_logbook_label', '_logbook_log_level', '_logbook_ip');
DELETE FROM wp_usermeta WHERE meta_key IN ('_logbook', '_logbook_label', '_logbook_log_level', '_logbook_ip');
DELETE FROM wp_termmeta WHERE meta_key IN ('_logbook', '_logbook_label', '_logbook_log_level', '_logbook_ip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_logbook', '_logbook_label', '_logbook_log_level', '_logbook_ip');

