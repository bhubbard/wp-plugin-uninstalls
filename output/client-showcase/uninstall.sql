-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('client_showcase_list', 'client_showcase_list_display');
DELETE FROM wp_options WHERE option_name LIKE '%_flush_rewrite_rules';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('client_showcase_ignore_notice', 'client_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('client_showcase_ignore_notice', 'client_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('client_showcase_ignore_notice', 'client_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('client_showcase_ignore_notice', 'client_url');

