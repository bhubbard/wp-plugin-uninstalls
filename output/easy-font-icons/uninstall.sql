-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mm_efi_main_settings', 'mm_efi_color', 'mm_efi_font_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mm_efi_font_icon', '_mm_efi_current_font', '_mm_efi_output_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mm_efi_font_icon', '_mm_efi_current_font', '_mm_efi_output_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mm_efi_font_icon', '_mm_efi_current_font', '_mm_efi_output_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mm_efi_font_icon', '_mm_efi_current_font', '_mm_efi_output_type');

