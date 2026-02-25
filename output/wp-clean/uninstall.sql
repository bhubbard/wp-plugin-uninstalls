-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpclean_plugin_options_archives_pages', 'wpclean_plugin_options_attachments', 'wpclean_plugin_options_comments', 'wpclean_plugin_options_header', 'wpclean_plugin_options_images', 'wpclean_plugin_options_interface', 'wpclean_plugin_options_pagination', 'wpclean_plugin_options_posts', 'wpclean_plugin_options_profile', 'wpclean_plugin_options_rss', 'wpclean_plugin_options_search', 'wpclean_plugin_options_security', 'wpclean_plugin_options_update', 'wpclean_plugin_options_widgets');

