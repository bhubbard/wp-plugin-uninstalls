-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gp_rewrite_rule', 'gp_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gp_source_url_templates');
DELETE FROM wp_usermeta WHERE meta_key IN ('gp_source_url_templates');
DELETE FROM wp_termmeta WHERE meta_key IN ('gp_source_url_templates');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gp_source_url_templates');

