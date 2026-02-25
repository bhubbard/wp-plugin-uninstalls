-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thpeddup_pro_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thpeddup_enable_checkout_page', 'thpeddup_upcross_select', 'thpeddup_enable_popup', 'thpeddup_popup_heading');
DELETE FROM wp_usermeta WHERE meta_key IN ('thpeddup_enable_checkout_page', 'thpeddup_upcross_select', 'thpeddup_enable_popup', 'thpeddup_popup_heading');
DELETE FROM wp_termmeta WHERE meta_key IN ('thpeddup_enable_checkout_page', 'thpeddup_upcross_select', 'thpeddup_enable_popup', 'thpeddup_popup_heading');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thpeddup_enable_checkout_page', 'thpeddup_upcross_select', 'thpeddup_enable_popup', 'thpeddup_popup_heading');

