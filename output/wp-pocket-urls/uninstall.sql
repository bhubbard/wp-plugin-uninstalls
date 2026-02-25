-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_pocketurl_link_redirection', 'wp_pocketurl_link_collect_data', 'wp_pocketurl_link_prefix', 'wp_pocketurl_link_exclude_cat', 'wp_pocketurl_link_enable_auto', 'wp_pocketurl_link_exclude_word', 'wp_pocketurl_link_require_word', 'rewrite_rules', 'wp_pocketurl_flush_rewrite_rules_flag', 'wp_pocketurl_link_nofollow', 'wp_pocketurl_link_tracking_code');
DELETE FROM wp_options WHERE option_name LIKE '%_option_name';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_pocketurl_link', 'wp_pocketurl_link_custom_options', 'wp_pocketurl_link_redirection');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_pocketurl_link', 'wp_pocketurl_link_custom_options', 'wp_pocketurl_link_redirection');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_pocketurl_link', 'wp_pocketurl_link_custom_options', 'wp_pocketurl_link_redirection');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_pocketurl_link', 'wp_pocketurl_link_custom_options', 'wp_pocketurl_link_redirection');

