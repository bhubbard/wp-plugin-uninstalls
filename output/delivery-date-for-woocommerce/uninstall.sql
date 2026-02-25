-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ddfw_delivery_options_group', 'ddfw_enable_delivery', 'ddfw_required_delivery', 'ddfw_disable_virtual', 'ddfw_delivery_error_msg', 'ddfw_delivery_date_title', 'ddfw_delivery_date_email_title', 'ddfw_delivery_date_option_title', 'ddfw_disable_x_days', 'ddfw_specific_day', 'ddfw_disable_monday', 'ddfw_disable_tuesday', 'ddfw_disable_wednesday', 'ddfw_disable_thursday', 'ddfw_disable_friday', 'ddfw_disable_saturday', 'ddfw_disable_sunday');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ddfw_delivery_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ddfw_delivery_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ddfw_delivery_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ddfw_delivery_date');

