-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rentsyst_auth', 'rentsyst_enable_design_v2', 'rentsyst_design_settings', 'rentsyst_privacy_policy_page_id', 'rentsyst_booking_vehicle_params', 'rentsyst_confirmation_page_id', 'rentsyst_design_settings_v2', 'rentsyst_access_token', 'rentsyst_enable_booking_button');
DELETE FROM wp_options WHERE option_name LIKE 'rentsyst_design_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'rentsyst_design_settings_v2_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail', 'year', 'color', 'group', 'body_type', 'fuel', 'transmission', 'price', 'number_seats', 'number_doors', 'large_bags', 'small_bags', 'brand', 'mark', 'photos', 'attachments', 'options', 'hash', 'min_price', 'periods_price', 'seasons', 'custom_fields', 'price_tariff', 'locations', 'options_data', 'discount_price', 'id', 'volume_tank', 'insurance_deposit', 'volume_engine', 'odometer', 'link', '_wp_page_template', '_rentsyst_image_pending');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail', 'year', 'color', 'group', 'body_type', 'fuel', 'transmission', 'price', 'number_seats', 'number_doors', 'large_bags', 'small_bags', 'brand', 'mark', 'photos', 'attachments', 'options', 'hash', 'min_price', 'periods_price', 'seasons', 'custom_fields', 'price_tariff', 'locations', 'options_data', 'discount_price', 'id', 'volume_tank', 'insurance_deposit', 'volume_engine', 'odometer', 'link', '_wp_page_template', '_rentsyst_image_pending');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail', 'year', 'color', 'group', 'body_type', 'fuel', 'transmission', 'price', 'number_seats', 'number_doors', 'large_bags', 'small_bags', 'brand', 'mark', 'photos', 'attachments', 'options', 'hash', 'min_price', 'periods_price', 'seasons', 'custom_fields', 'price_tariff', 'locations', 'options_data', 'discount_price', 'id', 'volume_tank', 'insurance_deposit', 'volume_engine', 'odometer', 'link', '_wp_page_template', '_rentsyst_image_pending');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail', 'year', 'color', 'group', 'body_type', 'fuel', 'transmission', 'price', 'number_seats', 'number_doors', 'large_bags', 'small_bags', 'brand', 'mark', 'photos', 'attachments', 'options', 'hash', 'min_price', 'periods_price', 'seasons', 'custom_fields', 'price_tariff', 'locations', 'options_data', 'discount_price', 'id', 'volume_tank', 'insurance_deposit', 'volume_engine', 'odometer', 'link', '_wp_page_template', '_rentsyst_image_pending');

