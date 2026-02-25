-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fresh_install_assistant_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('metaboxhidden_dashboard', 'show_welcome_panel');
DELETE FROM wp_usermeta WHERE meta_key IN ('metaboxhidden_dashboard', 'show_welcome_panel');
DELETE FROM wp_termmeta WHERE meta_key IN ('metaboxhidden_dashboard', 'show_welcome_panel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('metaboxhidden_dashboard', 'show_welcome_panel');

