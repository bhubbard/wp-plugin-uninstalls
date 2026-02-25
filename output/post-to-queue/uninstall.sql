-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptq_settings', 'ptq_queued_existence');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_queue_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_queue_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_queue_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_queue_order');

