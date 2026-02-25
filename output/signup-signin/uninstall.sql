-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('has_to_be_activated', 'first_name', 'last_name', 'wp_capabilities', 'show_admin_bar_front', 'forgot_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('has_to_be_activated', 'first_name', 'last_name', 'wp_capabilities', 'show_admin_bar_front', 'forgot_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('has_to_be_activated', 'first_name', 'last_name', 'wp_capabilities', 'show_admin_bar_front', 'forgot_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('has_to_be_activated', 'first_name', 'last_name', 'wp_capabilities', 'show_admin_bar_front', 'forgot_email');

