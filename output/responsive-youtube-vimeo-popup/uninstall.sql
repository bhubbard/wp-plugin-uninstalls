-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpvp_popup', '_site_transient_disable-ryv-notice', 'wp_video_popup_plugin_activated', 'wp_video_popup_install_date', 'wp_video_popup_review_notice');

