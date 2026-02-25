-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phpbbdb_host', 'phpbbdb_name', 'phpbbdb_user', 'phpbbdb_pass', 'phpbbdb_prefix', 'phpbb_forum_url', 'phpbb_seo_enabled');

