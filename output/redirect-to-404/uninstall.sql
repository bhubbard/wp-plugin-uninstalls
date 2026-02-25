-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PRT_redirect_404_pageUrl', 'PRT_redirect_404_status', 'prfx_value', 'prfx_info');

