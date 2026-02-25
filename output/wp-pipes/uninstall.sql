-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pipes_cronjob_active', 'pipes_active', 'pipes_schedule', 'pipes_start_at', 'pipes_not_use_cache', 'pipes_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pipes_help_box', 'pipes_per_page', 'addons_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('pipes_help_box', 'pipes_per_page', 'addons_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('pipes_help_box', 'pipes_per_page', 'addons_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pipes_help_box', 'pipes_per_page', 'addons_per_page');

