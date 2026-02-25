-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dp_404_redirect_enabled', 'dp_404_redirect_url', 'dp_404_show_tracking_notice');

