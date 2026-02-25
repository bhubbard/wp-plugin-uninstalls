-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'aisp_otools_add_custom_item', 'aisp_otools_redirect_page', 'aisp_otools_allow_on_hold_payment');

