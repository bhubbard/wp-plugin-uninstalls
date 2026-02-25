-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('droppcc-paywall-setting', 'droppcc-paywall-profile');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dropp_paywall_enable', 'dropp_paywall_open_access', 'dropp_paywall_selected_restriction');
DELETE FROM wp_usermeta WHERE meta_key IN ('dropp_paywall_enable', 'dropp_paywall_open_access', 'dropp_paywall_selected_restriction');
DELETE FROM wp_termmeta WHERE meta_key IN ('dropp_paywall_enable', 'dropp_paywall_open_access', 'dropp_paywall_selected_restriction');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dropp_paywall_enable', 'dropp_paywall_open_access', 'dropp_paywall_selected_restriction');

