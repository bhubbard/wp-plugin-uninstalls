-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whippet_options', 'sgal_tracking_id', 'sgal_adjusted_bounce_rate', 'sgal_script_position', 'sgal_enqueue_order', 'sgal_anonymize_ip', 'sgal_track_admin', 'caos_remove_wp_cron', 'caos_disable_display_features', 'whippet_Issue_1', 'whippet_Issue_2', 'Activated_Plugin', 'whippet_db_version');

