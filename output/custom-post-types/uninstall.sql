-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('meta-fields');
DELETE FROM wp_options WHERE option_name LIKE '%dismissed_notices';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('id', 'supports', 'fields', 'position', 'type', 'dismissible', 'admin_only', 'buttons', 'parent', 'order', 'menu_icon', 'show_in_rest');
DELETE FROM wp_usermeta WHERE meta_key IN ('id', 'supports', 'fields', 'position', 'type', 'dismissible', 'admin_only', 'buttons', 'parent', 'order', 'menu_icon', 'show_in_rest');
DELETE FROM wp_termmeta WHERE meta_key IN ('id', 'supports', 'fields', 'position', 'type', 'dismissible', 'admin_only', 'buttons', 'parent', 'order', 'menu_icon', 'show_in_rest');
DELETE FROM wp_commentmeta WHERE meta_key IN ('id', 'supports', 'fields', 'position', 'type', 'dismissible', 'admin_only', 'buttons', 'parent', 'order', 'menu_icon', 'show_in_rest');

