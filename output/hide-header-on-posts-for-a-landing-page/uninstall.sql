-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vgse_welcome_redirect', 'vg_page_layout_in_use');

