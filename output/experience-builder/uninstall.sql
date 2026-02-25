-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ml_local_cache', 'ml_anti_flicker', 'ml_content_delivery', 'ml_timeout', 'ml_postback_delay', 'ml_spa_page_view_option', 'ml_token', 'ml_use_quick_start', 'ml_quickstart_username', 'ml_quickstart_password', 'ml_account_name', 'ml_cid', 'ml_lastsetting', 'postback_delay', 'spa_pageview_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_monoloop_condition');
DELETE FROM wp_usermeta WHERE meta_key IN ('_monoloop_condition');
DELETE FROM wp_termmeta WHERE meta_key IN ('_monoloop_condition');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_monoloop_condition');

