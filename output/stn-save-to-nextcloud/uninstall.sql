-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_dlwcloud', 'pass_dlwcloud', 'url_dlwcloud', 'email_dlwcloud', 'frequency_dlwcloud', 'day_dlwcloud', 'hour_dlwcloud', 'auto_update_dlwcloud', 'folder_dlwcloud', 'nb_save_dlwcloud', 'bdd_only_dlwcloud', 'update_plugins', 'update_themes');

