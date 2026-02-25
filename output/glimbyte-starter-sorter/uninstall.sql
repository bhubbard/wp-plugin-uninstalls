-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glmbso_activation_dates', 'glmbso_install_dates', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('glmbso_sort_preference');
DELETE FROM wp_usermeta WHERE meta_key IN ('glmbso_sort_preference');
DELETE FROM wp_termmeta WHERE meta_key IN ('glmbso_sort_preference');
DELETE FROM wp_commentmeta WHERE meta_key IN ('glmbso_sort_preference');

