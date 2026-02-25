-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mangapress_upgrade', 'mangapress_options', 'mangapress_ver', 'mangapress_default_category', 'rewrite_rules', 'mangapress_db_ver', 'mangapress_random_comics');

