-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gp_npwp_hide_admin_column', 'gp_npwp_new_button_text', 'gp_npwp_hide_wrapper', 'gp_npwp_new_message_text', 'gp_npwp_hide_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_not_buyable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_not_buyable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_not_buyable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_not_buyable');

