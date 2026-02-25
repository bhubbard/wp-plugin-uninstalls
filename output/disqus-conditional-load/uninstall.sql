-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dcl_gnrl_options', 'disqus_forum_url', 'disqus_public_key', 'disqus_sync_token', 'disqus_secret_key', 'disqus_admin_access_token', 'disqus_sso_enabled', 'disqus_sso_button', 'disqus_render_js', 'disqus_last_sync_message', 'disqus_manual_sync');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dsq_thread_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('dsq_thread_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('dsq_thread_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dsq_thread_id');

