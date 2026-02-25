-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sogo_header_footer_lk_status', 'sogo_header_footer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oh-header-script', 'oh-hide-header', '_oh_add_script_header', '_oh_add_script_header_hide', 'oh-footer-script', 'oh-hide-footer', '_oh_add_script_footer', '_oh_add_script_footer_hide');
DELETE FROM wp_usermeta WHERE meta_key IN ('oh-header-script', 'oh-hide-header', '_oh_add_script_header', '_oh_add_script_header_hide', 'oh-footer-script', 'oh-hide-footer', '_oh_add_script_footer', '_oh_add_script_footer_hide');
DELETE FROM wp_termmeta WHERE meta_key IN ('oh-header-script', 'oh-hide-header', '_oh_add_script_header', '_oh_add_script_header_hide', 'oh-footer-script', 'oh-hide-footer', '_oh_add_script_footer', '_oh_add_script_footer_hide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oh-header-script', 'oh-hide-header', '_oh_add_script_header', '_oh_add_script_header_hide', 'oh-footer-script', 'oh-hide-footer', '_oh_add_script_footer', '_oh_add_script_footer_hide');

