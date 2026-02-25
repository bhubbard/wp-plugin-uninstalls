-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('consolety_news_lastupdate', 'consolety_news_id', 'consolety_news_class', 'consolety_news_content', 'consolety_connected', 'last_site_connect_check_user', 'update_site_connect_check_user', 'consolety_site_object_lastupdate', 'consolety_site_object', 'consolety_last_flush', 'consolety_no_sync', 'consolety_export_finished_once', 'consolety_styles', 'consolety_seo_secretkey', 'consolety-design_to_emails', 'consolety-design_period_minutes', 'consolety-design_with_delay', 'consoletySeoKey', 'сonsolety_news_dismiss_id', 'consolety_db_version', 'consolety_copyright', 'consolety_feed_mode', 'consolety_feed_url', 'consolety_event_lastupdate', 'consolety_sync_lastupdate', 'consolety_sync_last_id', 'consolety_site_network', 'consoletySeoDisp', 'consolety_post_types', 'consolety_install_finished', 'install_finished', 'consolety_last_activity');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('consolety-export', 'exported_to_consolety');
DELETE FROM wp_usermeta WHERE meta_key IN ('consolety-export', 'exported_to_consolety');
DELETE FROM wp_termmeta WHERE meta_key IN ('consolety-export', 'exported_to_consolety');
DELETE FROM wp_commentmeta WHERE meta_key IN ('consolety-export', 'exported_to_consolety');

