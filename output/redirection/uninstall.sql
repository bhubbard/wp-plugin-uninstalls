-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redirection_lookup', 'redirection_post', 'redirection_root', 'redirection_index', 'redirection_options', 'rss_language', 'prli_db_version', 'quickppr_redirects', '301_redirects', 'redirection_aggressive_delete');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('redirection_log_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('redirection_log_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('redirection_log_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('redirection_log_per_page');

