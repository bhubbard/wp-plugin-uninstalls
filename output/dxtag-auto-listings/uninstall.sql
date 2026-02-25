-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guaven_dxtag_tagslug', 'guaven_dxtag_flush', 'guaven_dxtag_activated', 'guaven_dxtag_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('guaven_dxtag_rule', 'cron_update_this_dxtag');
DELETE FROM wp_usermeta WHERE meta_key IN ('guaven_dxtag_rule', 'cron_update_this_dxtag');
DELETE FROM wp_termmeta WHERE meta_key IN ('guaven_dxtag_rule', 'cron_update_this_dxtag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('guaven_dxtag_rule', 'cron_update_this_dxtag');

