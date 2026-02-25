-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone', 'mobile', 'pw_reset_ts', 'name_on_events', 'mphone');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone', 'mobile', 'pw_reset_ts', 'name_on_events', 'mphone');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone', 'mobile', 'pw_reset_ts', 'name_on_events', 'mphone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone', 'mobile', 'pw_reset_ts', 'name_on_events', 'mphone');

