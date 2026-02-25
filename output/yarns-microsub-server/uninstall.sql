-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yarns_storage_period', 'yarns_show_debug', 'debug_log', 'yarns_channels', 'yarns_poll_log', 'iw_single_author', 'iw_default_author');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yarns_microsub_json');
DELETE FROM wp_usermeta WHERE meta_key IN ('yarns_microsub_json');
DELETE FROM wp_termmeta WHERE meta_key IN ('yarns_microsub_json');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yarns_microsub_json');

