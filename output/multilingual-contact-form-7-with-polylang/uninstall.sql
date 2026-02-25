-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mlcf7pll_fix_ajax_form_messages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('messages', '_messages');
DELETE FROM wp_usermeta WHERE meta_key IN ('messages', '_messages');
DELETE FROM wp_termmeta WHERE meta_key IN ('messages', '_messages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('messages', '_messages');

