-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss88_vestacp_widget_vesta_url', 'ss88_vestacp_widget_vesta_username', 'ss88_vestacp_widget_vesta_hash', 'ss88_vestacp_widget_vesta_verifyssl');

