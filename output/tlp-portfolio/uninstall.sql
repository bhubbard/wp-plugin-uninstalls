-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtportfolio_bf_2021', 'rtpf_ny_2025', 'rtport_plugin_activation_time', 'rtport_spare_me', 'rtport_remind_me', 'rtport_rated', 'rtport_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('project_url', 'tools', 'client_name', 'completed_date', 'short_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('project_url', 'tools', 'client_name', 'completed_date', 'short_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('project_url', 'tools', 'client_name', 'completed_date', 'short_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('project_url', 'tools', 'client_name', 'completed_date', 'short_description');

