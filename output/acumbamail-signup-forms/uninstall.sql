-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acumbamail_options', 'custom_user_logged_in', 'acumba_widget_fields', 'acumba_chosen_list', 'acumba_ordered_fields', 'theme_style');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acumba_subscribe');
DELETE FROM wp_usermeta WHERE meta_key IN ('acumba_subscribe');
DELETE FROM wp_termmeta WHERE meta_key IN ('acumba_subscribe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acumba_subscribe');

