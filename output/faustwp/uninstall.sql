-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faustwp_settings', 'rewrite_rules', 'faustwp_current_version', 'wpe_headless');
DELETE FROM wp_options WHERE option_name LIKE 'scrape_key_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_admin_bar_front');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_admin_bar_front');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_admin_bar_front');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_admin_bar_front');

