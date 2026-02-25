-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tm_coschedule_token', 'tm_coschedule_calendar_id', 'tm_coschedule_wordpress_site_id', 'tm_coschedule_synced_build', 'tm_coschedule_activation_redirect', 'tm_coschedule_id', 'tm_coschedule_custom_post_types_list');

