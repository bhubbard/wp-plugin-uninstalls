-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('subscribers_lang', 'subscribers_hash', 'subscribers_plugin_do_activation_redirect');

