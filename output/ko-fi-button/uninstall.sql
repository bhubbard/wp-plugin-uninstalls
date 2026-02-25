-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ko_fi_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kofi_display_floating_button');
DELETE FROM wp_usermeta WHERE meta_key IN ('kofi_display_floating_button');
DELETE FROM wp_termmeta WHERE meta_key IN ('kofi_display_floating_button');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kofi_display_floating_button');

