-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('istk_add_on_portfolio_data_description', 'istk_add_on_portfolio_category_display_footer', 'istk_add_on_portfolio_category_display_footer_in_front', 'istk_add_on_portfolio_category_title');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('istk_add_on_category_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('istk_add_on_category_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('istk_add_on_category_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('istk_add_on_category_image_id');

