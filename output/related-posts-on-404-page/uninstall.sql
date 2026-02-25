-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpp_hide_admin_notice', 'rpp_display_notice_time', 'rpp_activation_time', 'rpp_post_types');

