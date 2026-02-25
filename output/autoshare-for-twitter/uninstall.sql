-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoshare_migrate_to_v2_api_notice_dismissed', 'autoshare_ignore_duplicate_site_notice', 'autoshare_liveurl', 'autoshare_for_twitter_accounts', 'autoshare_for_twitter_connection_notice');

