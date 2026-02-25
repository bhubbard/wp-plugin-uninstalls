-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eldolink_affiliate', 'eldolink_token', 'eldolink_modal_display', 'eldolink_modal_tool', 'eldolink_modal_type', 'eldolink_modal_width', 'eldolink_modal_height', 'eldolink_modal_r', 'eldolink_modal_trk1', 'eldolink_modal_trk2', 'ldo_affiliate', 'ldo_products', 'ldo_formats', 'ldo_domains', 'ldo_pricing_models', 'ldo_modals');
DELETE FROM wp_options WHERE option_name LIKE 'ldo_formats_%';
DELETE FROM wp_options WHERE option_name LIKE 'ldo_tools_%';

