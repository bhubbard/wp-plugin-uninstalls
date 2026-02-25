-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('push_syndicate_settings', 'syn_delete_error_sites', 'syn_syndicate_lock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('syn_site_token', 'syn_site_id', 'syn_site_url', 'syn_site_username', 'syn_site_password', 'syn_transport_type', 'syn_site_enabled', '_syn_selected_sitegroups', '_syn_slave_post_states', '_syn_old_sitegroups');
DELETE FROM wp_usermeta WHERE meta_key IN ('syn_site_token', 'syn_site_id', 'syn_site_url', 'syn_site_username', 'syn_site_password', 'syn_transport_type', 'syn_site_enabled', '_syn_selected_sitegroups', '_syn_slave_post_states', '_syn_old_sitegroups');
DELETE FROM wp_termmeta WHERE meta_key IN ('syn_site_token', 'syn_site_id', 'syn_site_url', 'syn_site_username', 'syn_site_password', 'syn_transport_type', 'syn_site_enabled', '_syn_selected_sitegroups', '_syn_slave_post_states', '_syn_old_sitegroups');
DELETE FROM wp_commentmeta WHERE meta_key IN ('syn_site_token', 'syn_site_id', 'syn_site_url', 'syn_site_username', 'syn_site_password', 'syn_transport_type', 'syn_site_enabled', '_syn_selected_sitegroups', '_syn_slave_post_states', '_syn_old_sitegroups');

