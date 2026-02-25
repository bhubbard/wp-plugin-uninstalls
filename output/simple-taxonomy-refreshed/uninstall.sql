-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('settings_updated', 'simple_taxonomy_refreshed_rewrite');
DELETE FROM wp_options WHERE option_name LIKE 'staxo_sel_%';

