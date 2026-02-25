-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdan_admin_notes_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pdan_visibility_meta', 'pdan_minimized', 'pdan_order_meta', 'pdan_checklist_meta', 'pdan_color_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('pdan_visibility_meta', 'pdan_minimized', 'pdan_order_meta', 'pdan_checklist_meta', 'pdan_color_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('pdan_visibility_meta', 'pdan_minimized', 'pdan_order_meta', 'pdan_checklist_meta', 'pdan_color_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pdan_visibility_meta', 'pdan_minimized', 'pdan_order_meta', 'pdan_checklist_meta', 'pdan_color_meta');

