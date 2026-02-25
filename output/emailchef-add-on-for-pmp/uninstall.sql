-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmproecaddon_settings', 'pmproecaddon_plugin_user_enabled', 'pmproecaddon_consumer_key', 'pmproecaddon_consumer_secret', 'pmproecaddon_plugin_list_opt_in_audiences', 'pmproecaddon_require_update_profile', 'pmproecaddon_plugin_list_config', 'pmproecaddon_plugin_list_non_member', 'pmproecaddon_require_unsuscribe_on_level');

