-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notifyrabbit_push_verified', 'notifyrabbit_push_configuration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_notifyrabbit_send', '_notifyrabbit_title', '_notifyrabbit_message', '_notifyrabbit_force', '_notifyrabbit_sent_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_notifyrabbit_send', '_notifyrabbit_title', '_notifyrabbit_message', '_notifyrabbit_force', '_notifyrabbit_sent_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_notifyrabbit_send', '_notifyrabbit_title', '_notifyrabbit_message', '_notifyrabbit_force', '_notifyrabbit_sent_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_notifyrabbit_send', '_notifyrabbit_title', '_notifyrabbit_message', '_notifyrabbit_force', '_notifyrabbit_sent_hash');

