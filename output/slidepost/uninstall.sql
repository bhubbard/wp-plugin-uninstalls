-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slidepost_categories', 'slidepost_order', 'slidepost_autoplay', 'slidepost_css', 'slidepost_template', 'slidepost_page_slug', 'slidepost_plugin_url', 'slidepost_custom_name', 'slidepost_custom_logo_url', 'slidepost_custom_footer', 'slidepost_random_vertical');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('price', 'rentalprice', 'timeshare', 'longtermrental', 'summerrental', 'winterrental');
DELETE FROM wp_usermeta WHERE meta_key IN ('price', 'rentalprice', 'timeshare', 'longtermrental', 'summerrental', 'winterrental');
DELETE FROM wp_termmeta WHERE meta_key IN ('price', 'rentalprice', 'timeshare', 'longtermrental', 'summerrental', 'winterrental');
DELETE FROM wp_commentmeta WHERE meta_key IN ('price', 'rentalprice', 'timeshare', 'longtermrental', 'summerrental', 'winterrental');

