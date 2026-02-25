-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_autopruneposts_conf', 'auto-prune-posts-lastrun');

