-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'botsubmit_sent_urls_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_botsubmit_send_on_publish', '_botsubmit_send_on_update', '_botsubmit_log');
DELETE FROM wp_usermeta WHERE meta_key IN ('_botsubmit_send_on_publish', '_botsubmit_send_on_update', '_botsubmit_log');
DELETE FROM wp_termmeta WHERE meta_key IN ('_botsubmit_send_on_publish', '_botsubmit_send_on_update', '_botsubmit_log');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_botsubmit_send_on_publish', '_botsubmit_send_on_update', '_botsubmit_log');

