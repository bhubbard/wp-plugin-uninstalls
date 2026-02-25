-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('download_plugin_do_activation_redirect', 'dpwap_dismiss_eventprime_promotion', 'dpwap_dismiss_offer_notice', 'dpwap_downloads_url', 'dpwap_plugins');

