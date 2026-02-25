-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_action_repeater');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_action_repeater');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_action_repeater');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_action_repeater');

