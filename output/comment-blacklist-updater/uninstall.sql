-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blacklist_local', 'blacklist_exclude', 'blacklist_last_update', 'blacklist_github_source_updated', 'use_wordpress_comment_blacklist_splorp', 'apa_another_blacklist_url', '_transient_timeout_blacklist_github_update_check', 'use_wordpress_comment_blacklist_splorp ', 'blacklist_update_process', 'blacklist_github_update_check');

