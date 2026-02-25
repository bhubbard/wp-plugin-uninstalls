-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_status_do_activation_redirect', 'grafana_dashboard_title', 'grafana_api', 'grafana_url', 'grafana_dashboard_url', 'grafana_dashboard_id', 'grafana_dashboard_uid', 'grafana_dashboard_version');

