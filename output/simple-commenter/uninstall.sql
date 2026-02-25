-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simco_account_info', 'simco_integration_token', 'simco_project_id', 'simco_domain_id', 'simco_settings', 'simco_enabled_roles', 'simco_auto_sync_clients', 'simco_admin_roles', 'simco_last_seen_todo_count', 'simco_new_comments_count', 'simco_account_cache', 'simco_domains_cache');
DELETE FROM wp_options WHERE option_name LIKE 'simco_synced_user_%';

